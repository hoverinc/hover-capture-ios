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

> [!TIP]
> Swift Package Manager requires a properly configured `.netrc` file to download binary assets from the private repository. Please see [Authenticating with .netrc](#authenticating-with-netrc) below for instructions on how to properly configure this.

<details>
<summary>Xcode</summary>
    
To integrate the SDK using Xcode, perform the following steps:

1. In the Xcode Project Navigator pane (on the left side), select your project.
2. Select your project under the PROJECT heading on the left-side panel
3. Select the Package Dependencies tab on the top
4. Click the + button under the Packages list.
5. In the "Search or Enter Package URL" search bar, enter the repository url (`https://github.com/hoverinc/hover-capture-ios.git`)
    - We recommend using https to mitigate some bumps with github authentication. 
6. Click "Add Package"
7. Select a target to add the `HVCaptureSDK` library.

</details> 

<details>
<summary>Package.swift</summary>
    
To integrate the SDK into a Swift package, add the following line to your `dependencies` array in your `Package.swift` manifest:

```swift
.package(url: "https://github.com/hoverinc/hover-capture-ios.git", from: "0.1.1")
```

</details> 

## Usage

> [!CAUTION]
> APIs are non-final and considered unstable.

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

Since we execute asynchronously, within a Swift ``Task``, we also honor its cancellation functionality and stop the capture session and capture flow UI if the task is cancelled. 

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

## Troubleshooting

### Authenticating with `.netrc`

The SDK wraps a number of sub-frameworks into one tidy package to simplify distribution and integration. However, to avoid checking these binaries into the repository, we host them as artifacts within the associated Github Release. To meet Swift Package Manager's security requirements, we must use Github's API to download these binary assets, and thus authenticate with the Github API using `netrc` to authorize the download. 

Your `netrc` file should look something like this:

```
machine api.github.com
  login schrismartin
  password ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

- `machine` – This will be `api.github.com`, as SPM will attempt to download the binary frameworks via Github's API
- `login` – This will be your Github username, omitting any `@domain.com` suffix.
- `password` – This will be a [Github Personal Access Token](#github-personal-access-token)

After making any modifications to this file, you will want to restart Xcode for the changes to take effect. You may need to reset package caches if you continue to see errors.

> [!NOTE]
> An incorrect configuration of this file will result in an `badResponseStatusCode(404)` error when attempting to download a framework binary. While a 404 typically indicates that a resources doesn't exist, in this case, it means it doesn't exist _for you_. If your `.netrc` file is correctly configured and you're still seeing this issue, please review the scopes for your configured Github PAT.
    
### Github Personal Access Tokens:

Both Xcode and the `.netrc` file will need access to Github in order to seamlessly download the requirements to build & run the SDK. The associated Github Personal Access Token (PAT) will need to be configured as below.

1. Make sure you’re signed into Github for the account that you need to authenticate
2. Navigate to Settings → Developer Settings → Personal Access Tokens
3. Click “Generate new token” → “Generate new token (classic)”
4. Generate a new token that contains at least the following scopes
    - `admin:public_key`
    - `write:discussion`
    - `repo`
    - `user`
