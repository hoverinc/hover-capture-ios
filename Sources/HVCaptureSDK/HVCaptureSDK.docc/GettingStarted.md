# Getting Started

Initialize the SDK, create a capture session and begin the capture flow UI.

@Metadata {
    @PageImage(
        purpose: card, 
        source: "hvcamera-icon", 
        alt: "A stylized house.")
    @PageImage(
        purpose: icon, 
        source: "hover-logo", 
        alt: "An icon representing the HOVER logo framework.")
    @PageColor(blue)
}

## Overview

The SDK is akin to an embedded app within a host app. It will run and attach its own `View`s to the `ViewController`, and run as a self-contained black box until the capture session is complete. 
This article will walk through the steps required to use the SDK within a host app.

### Initializing the SDK

The SDK should be initialized as early as possible in the app lifecycle. This is because the SDK does some background processing to set up required structures and upload any remaining captured data from past jobs that have yet to complete.
As such, the SDK should (ideally) be initialized in host application’s `applicationDidFinishLaunching` method, so that the SDK can continue uploading any files that remain to be uploaded. This helps expedite 3D model generation, as we need all the captured images and metadata to begin the 3D reconstruction process.

```swift
import HVCaptureSDK
class AppDelegate: UIResponder, UIApplicationDelegate {
    // ...

    @MainActor
    private func applicationDidFinishLaunching(_ notification: Notification) {
        HVPartnerSDK.sharedInstance.initialize()
    }
}
```

While running this in `applicationDidFinishLaunching` would be ideal, at a minimum it should be run at some point prior to starting a capture session.

NOTE: if background uploads are both enabled and wanted, the application should call `HVPartnerSDK.sharedInstance.registerForBackgroundJobs()` before the app completes launching. See the section on [Supporting Background Uploads](#supporting-background-uploads) for further details.

### Creating a Capture Session

The host app can launch the SDK in any way it sees fit, as long as there is an active `ViewController` running somewhere in the app. Here is a minimal example of launching the SDK capture flow on a button click using `SwiftUI`:

```swift
import HVCaptureSDK
import SwiftUI

struct FooView: View {
    let jobInfo: CaptureJobInformation
    let sessionSettings: HVCameraSettings

    // ... populate settings, etc. 

    var body: some View {
        Button("Start Capture") {
            let captureTask = Task {
                do {
                    try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
                    try await HVPartnerSDK.sharedInstance.startCaptureFlow()
                } catch let error as HVSessionError {
                    // TODO: handle the known errors here
                    print("Known capture flow error: \(error.localizedDescription)")
                } catch {
                    // TODO: handle unknown errors, who knows what to do
                    print("Unknown Capture Flow Error: \(error.localizedDescription)")
                }
                captureSessionCompleted()
            }
        }
    }

    func captureSessionCompleted() {
        // perform any next steps for post-capture session work
    }
}
```

Note that the SDK executes asynchronously, and the task that calls ``HVPartnerSDK/startCaptureSession(settings:info:)`` will suspend until the capture flow completes. As such, there's a very linear flow to interacting with the SDK, and once the call's `await` returns, the host app knows the SDK's capture session is complete (as seen with the `captureSessionCompleted` function above). If the capture session encountered a fatal error, it will raise the error as an exception. 

#### Cancelling a Capture Session

Since we execute asynchronously within a Swift `Task`, we also honor its cancellation functionality and stop the capture session and capture flow UI if the task is cancelled. 

```swift
let captureTask = Task {
    do {
        try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
        try await HVPartnerSDK.sharedInstance.startCaptureFlow()
    } catch let error as HVSessionError {
        switch error.kind {
        case .UserCancelled:
            print("We've been cancelled!")
        }
    }
}

// You can cancel the task (and thereby, the capture flow + capture session) like this:
DispatchQueue.main.asyncAfter(deadline: .now() + 10, execute: {
    captureTask.cancel()
})
```

#### Monitoring Job Status

Since the capture flow proceeds asynchronously, the host app may want to monitor the local job status as the capture proceeds. There are a few methods for obtaining Job status:

1. on-demand: The ``HVPartnerSDK`` class exposes a public method ``HVPartnerSDK/getClientJobStatus(for:)``. This is an `async` method that will return what the requested `Job`'s current status as a ``JobStatus``. If the requested ``Job`` doesn't exist locally, then it will raise a ``HVJobError`` exception. 
2. streaming: The ``HVPartnerSDK`` class also exposes a public method ``HVPartnerSDK/getJobStateObservable(for:)`` that returns a `Combine` publisher for the requested `Job`. The publisher will emit ``JobStatus`` instances whenever there's a change in the `Job`'s status. Additionally, `startCaptureSession` will return what the current `Job`'s status is when called, so together with `getJobStateObservable` you can track the whole status history for the `Job` (n.b. the initial state won't be published for a `Job`, so to get the complete status history you need to use the initial state returned from ``HVPartnerSDK/startCaptureSession(settings:info:)`` in conjunction with the publisher from `getJobStateObservable`). The initial Job state will generally be ``JobStatus.Created`` if newly created, or ``JobStatus.Draft`` if resuming an existing Job.

For example, adapting the previous example to monitor the `Job` status and build a complete `JobStatus` history for the capture session, you can do:

```swift
import Combine
import SwiftUI
import HVCaptureSDK

struct FooView: View {
    let jobInfo: CaptureJobInformation
    let sessionSettings: HVCameraSettings

    // if you you want monitor multiple job's statuses
    @State private var jobCancellables = [JobIdentifier: AnyCancellable]()
    @State private var jobStatusHistory = [JobIdentifier: [JobStatus]]()

    // ... populate settings, etc. 

    var body: some View {
        Button("Start Capture") {
            let captureTask = Task {
                do {
                    let jobState = try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
                    jobStatusHistory[jobInfo.identifier]?.append(jobStatus)
                    // check if we have a listener for the job already, so we don't make duplicate listeners each time the view is created
                    if jobCancellables[jobInfo.identifier] == nil {
                        let cancellable = HVPartnerSDK.sharedInstance.getJobStateObservable(for: jobInfo.identifier).sink(receiveValue: { (jobState: JobStatus) in
                            // NOTE: you can take various actions here based on the status change
                            if case let .uploadProgress(_, uploadStatus) = jobState {
                                print("Job@State: \(jobState) --> File@State: \(String(describing: uploadStatus))")
                            } else if case let .error(_, error) = jobState {
                                print("Job@State: \(jobState) --> Error: \(error)")
                            } else {
                                print("Job@State: \(jobState)")
                            }
                            jobStatusHistory[jobInfo.identifier]?.append(jobState)
                        })
                        jobCancellables[jobInfo.identifier] = cancellable
                    }
                    try await HVPartnerSDK.sharedInstance.startCaptureFlow()
                } catch let error as HVSessionError {
                    // TODO: handle the known errors here
                    print("Known capture flow error: \(error.localizedDescription)")
                } catch {
                    // TODO: handle unknown errors, who knows what to do
                    print("Unknown Capture Flow Error: \(error.localizedDescription)")
                }
                captureSessionCompleted()
            }
        }
    }
```

#### Supporting Background Uploads

By default, uploads will only occur while the app is open in the foreground. While uploads begin
as soon as a photo is captured, uploads may take longer in resource-constrained environments such as
areas with poor WiFi or cellular coverage, or when operating on the edge of a WiFi network (as is
common when taking photos of the exterior of a property).

To enable background uploads, follow these steps:

1. Add the "Background Tasks" capability to your app. 
    - This can be done by selecting your project in the Project navigator, selecting your 
      application target, going to Signing & Capabilities, and "+ Capability" 
2. Check the "Background Processing" checkbox within the "Background Tasks" capability.
3. Add `to.hover.uploads` to the [`BGTaskSchedulerPermittedIdentifiers`](https://developer.apple.com/documentation/bundleresources/information_property_list/bgtaskschedulerpermittedidentifiers))
    key in your `Info.plist`.

To use background uploads for the given app session, the app needs to opt-in to using it. This can be done by calling `HVPartnerSDK.sharedInstance.registerForBackgroundJobs`, for example:
```swift
class AppDelegate: UIResponder, UIApplicationDelegate {
    // ...

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        HVPartnerSDK.sharedInstance.registerForBackgroundJobs()
        HVPartnerSDK.sharedInstance.initialize()
    }
}
```

> Warning: Since we use `BGTaskScheduler` for our background processing, we need to call ``HVPartnerSDK/registerForBackgroundJobs()`` **before** the application finishes launching. If not, then the application will raise an `NSInternalInconsistencyException` exception with the reason: `'All launch handlers must be registered before application finishes launching'`. This is a constraint imposed by the [BGTaskScheduler framework itself](https://developer.apple.com/documentation/backgroundtasks/bgtaskscheduler/register(fortaskwithidentifier:using:launchhandler:)#Discussion) and if ignored will likely crash the application. 

While using `registerForBackgroundJobs` enables the SDK to schedule background tasks on its own as needed, it's also possible to disable automatic background task scheduling and have more manual control over background task scheduling. This can be useful for applications that want closer control over background tasks spawned from the SDK and which already have their own background task scheduling. This can be achieved by **not** calling ``HVPartnerSDK/registerForBackgroundJobs()``, and instead calling ``HVPartnerSDK/initializeForBackground(parameters:)`` from within a [BGProcessingTask](https://developer.apple.com/documentation/backgroundtasks/bgprocessingtask). Under the hood, this will check if there are pending uploads. If there are no pending uploads, then it will exit and do nothing. If there are, then it'll run asynchronously and attempt to complete the pending uploads, performing a single upload at a time and exiting once the pending upload queue has been completed.
