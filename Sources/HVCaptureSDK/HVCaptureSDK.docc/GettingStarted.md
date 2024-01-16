# GettingStarted

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

The SDK should be initialized as early as possible in the app lifecycle. This is because the SDK does some background work to set up required structures and upload any remaining captured data from past jobs that have yet to complete.
As such, the SDK should (ideally) be initialized in host application’s `applicationDidFinishLaunching` method, so that the SDK can continue uploading any files that remain to be uploaded. This helps expedite 3D model generation, as we need all the captured images and metadata to begin the 3D reconstruction process.

```swift
import HVCamera
class AppDelegate: UIResponder, UIApplicationDelegate {
    // ...

    @MainActor
    private func applicationDidFinishLaunching(_ notification: Notification) {
        HVCameraExterior.sharedInstance.initialize()
    }
}
```

### Creating a Capture Session

The host app can launch the SDK in any way it sees fit, as long as there is an active ViewController somewhere in the app. Here is one example using SwiftUI of launching the SDK capture flow on a button click:

```swift
import HVCamera
import SwiftUI

struct FooView: View {
    let jobInfo: CaptureJobInformation
    let sessionSettings: HVCameraSettings

    // ... populate settings, etc. 

    var body: some View {
        Button("Start Capture") {
            let captureTask = Task {
                do {
                    try await HVCameraExterior.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
                } catch let error as HVSessionError {
                    // maybe handle our known errors here
                    switch error.kind {
                    case .UserCancelled:
                        print("User cancelled capture flow")
                    case .FilesystemUnavailable:
                        print("File system is not writable?")
                    case .SessionCreationFailed:
                        print("Could not create capture session")
                    case .ViewControllerMissing:
                        print("View Controller absent")
                    case .Unknown(let errorMsg):
                        print("unknown error \(errorMsg)")
                    }
                    print("Known capture flow error: \(error.localizedDescription)")
                } catch {
                    // unknown error, who knows what to do
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

Note that the SDK executed asynchronously, and the task that calls ``startCaptureSession`` will suspend until the capture flow completes. As such, there's a very linear flow to interacting with the SDK, and once the call's `await` returns, the host app knows the SDK's capture session is complete (as seen with the `captureSessionCompleted` function above).

#### Cancelling a Capture Session

Since we execute asyncrhonously, within a Swift ``Task``, we also honor its cancellation functionality and stop the capture session and capture flow UI if the task is cancelled. 

```swift
let captureTask = Task {
    do {
        try await HVCameraExterior.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
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
