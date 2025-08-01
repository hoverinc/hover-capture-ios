# HOVER Capture iOS SDK

The HOVER Capture iOS SDK provides a user flow for capturing and submitting 3D scans of homes to be processed by HOVER. This involves a camera experience capable of collecting all necessary data, and instructional and permission management flows to improve capture success rates.

* Documentation: [https://hoverinc.github.io/hover-capture-ios](https://hoverinc.github.io/hover-capture-ios)
  * [DocC Documentation](https://hoverinc.github.io/hover-capture-ios/documentation/hvcapturesdk)
  * [Tutorials](https://hoverinc.github.io/hover-capture-ios/tutorials/tutorials)

## Installation

### Requirements

- Swift Package Manager
- Swift 5.9 (Xcode 15 or `swift-tools-version: 5.9`) or higher

### Swift Package Manager

The HOVER Capture iOS SDK is distributed using Swift Package Manager. You may integrate it using Xcode or a `Package.swift` file.

<details>
<summary>Xcode</summary>

To integrate the SDK using Xcode, perform the following steps:

1. In the Xcode Project Navigator pane (on the left side), select your project.
2. Select your project under the PROJECT heading on the left-side panel
3. Select the Package Dependencies tab on the top
4. Click the + button under the Packages list.
5. In the "Search or Enter Package URL" search bar, enter the repository url (`https://github.com/hoverinc/hover-capture-ios.git`)
6. Click "Add Package"
7. Select a target to add the `HVCaptureSDK` library.

</details>

<details>
<summary>Package.swift</summary>

To integrate the SDK into a Swift package, add the following line to your `dependencies` array in your `Package.swift` manifest:

```swift
.package(url: "https://github.com/hoverinc/hover-capture-ios.git", from: "2.0.0")
```

</details>

## Usage

The `Example` app in the repository provides a minimal example of how to integrate the SDK into an application. Additionally, the [Getting Stated](https://hoverinc.github.io/hover-capture-ios/documentation/hvcapturesdk/gettingstarted) guide and [Tutorials](https://hoverinc.github.io/hover-capture-ios/tutorials/tutorials/) have more comprehensive and up-to-date documentation regartding SDK usage, customization and integration.

### Initializing the SDK

The SDK should be initialized as early as possible in the app lifecycle. This is because the SDK does some background work to set up required structures and upload any remaining captured data from past jobs that have yet to complete.
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

### Creating a Capture Session

The host app can launch the SDK in any way it sees fit, as long as there is an active ViewController somewhere in the app. Here is one example using SwiftUI of launching the SDK capture flow on a button click:

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

Since we execute asynchronously, within a Swift ``Task``, we also honor its cancellation functionality and stop the capture session and capture flow UI if the task is cancelled.

```swift
let captureTask = Task {
    do {
        try await HVPartnerSDK.sharedInstance.startCaptureSession(settings: sessionSettings, info: jobInfo)
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



# CHANGELOG

Notable changes to the SDK across recent versions. The format below is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).



# 2.4.0 2025-07-29

### Changed
* Miscellaneous Improvements


# 2.2.1 2025-07-21

### Changed
* Fix build issues due to xcode version mismatch


# 2.2.0 2025-07-17

### Changed

* Gallery image display with full-screen support
* Started Swift 6 migration

### Fixed

* Camera orientation issues
* Errors related to session management
* Shutter button bugs
* Gallery display issues

# 2.1.0 2024-12-06

### Changed

* Offline Job Creation: The Hover SDK can now initiate Jobs without internet connection. When connectivity returns, a job ID can be linked to the offline job dynamically.
* Miscellaneous Bug Fixes.

# 2.0.1 2024-11-12

### Changed

* Some bug fixes around theming and overridable resources
* Fix some tutorial code snippets that used deprecated / removed symbols

# 2.0.0 2024-11-01

### Added

* Opt-in support for background uploads – see the Getting Stated guide and Capture SDK Essentials tutorial for more details.
* More flexible remote logging authentication and key management, so New Relic keys are no longer embedded in the SDK.

### Changed

* [BREAKING] Various HVTheme resources were renamed to better account for future attributes and better align with the corresponding Android resource names. See the Migration Guide for the old-to-new name mappings and theming tutorial for more detailed specifics.
* Deprecated old HVCameraExterior symbol, HVPartnerSDK should be used instead.

### Fixed

* Resolved a rare deadlock at camera start for consecutive camera sessions.
* Fixed a corner case where the minimum photo validations could be bypassed.
* Fixed a warning about checking CLLocationManager.authorizationStatus on the main thread.

Also, as of this release the hover-capture-ios repository is public, so users are no longer required to have authorization or Personal Access Tokens set up to use the package.

