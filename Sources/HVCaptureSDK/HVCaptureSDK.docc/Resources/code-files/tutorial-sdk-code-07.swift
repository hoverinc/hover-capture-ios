import SwiftUI
import HVCaptureSDK

class AppDelegate: UIResponder, UIApplicationDelegate {
    // ...

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        HVPartnerSDK.sharedInstance.registerForBackgroundJobs()
        // NOTE: can configure whether to upload on wifi only (`true`) vs. wifi + cellular (`false`)
        let uploadOnlyOnWiFi = true
        HVPartnerSDK.sharedInstance.initialize(parameters: .init(
            uploadOnWiFiOnly: uploadOnlyOnWiFi))
    }
}
