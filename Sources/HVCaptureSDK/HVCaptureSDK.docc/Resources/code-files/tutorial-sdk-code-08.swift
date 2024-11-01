import SwiftUI
import HVCaptureSDK

class AppDelegate: UIResponder, UIApplicationDelegate {

    // NOTE: this should match the identifier in Info.plist
    let captureSDKBackgroundTaskIdentifier = "to.hover.uploads"

    // ...

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // NOTE: can configure whether to upload on wifi only (`true`) vs. wifi + cellular (`false`)
        let uploadOnlyOnWiFi = true
        HVPartnerSDK.sharedInstance.initialize(parameters: .init(
            uploadOnWiFiOnly: uploadOnlyOnWiFi))

        // set up background tasks for scheduling HVCaptureSDK uploads, if applicable
        BGTaskScheduler.shared.register(forTaskWithIdentifier: captureSDKBackgroundTaskIdentifier, using: nil) { task in
            self.uploadCaptureDataInBackground(task: task as! BGProcessingTask)
        }

        // schedule the background task to be executed
        let request = BGProcessingTaskRequest(identifier: captureSDKBackgroundTaskIdentifier)
        request.requiresNetworkConnectivity = true
        request.requiresExternalPower = false
        try? BGTaskScheduler.shared.submit(request)
    }

    func uploadCaptureDataInBackground(task: BGProcessingTask) {
        let processingTask = Task {
            do {
                // set up HVPartnerSDK for background uploading (on wifi only). This will check for any un-uploaded files, and if any exist, begin uploading them.
                // NOTE: a more robust approach would re-enqueue the background task in case not all the files are uploaded in this background task session
                try await HVPartnerSDK.sharedInstance.initializeForBackground(parameters: .init(
                    uploadOnWiFiOnly: true))
                task.setTaskCompleted(success: true)
            } catch {
                task.setTaskCompleted(success: false)
            }
        }

        task.expirationHandler = {
            processingTask.cancel()
        }
    }
}
