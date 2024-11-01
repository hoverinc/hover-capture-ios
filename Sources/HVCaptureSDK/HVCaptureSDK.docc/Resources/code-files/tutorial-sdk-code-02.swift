import SwiftUI
import HVCaptureSDK

@main
struct BinarySDKExampleApp: App {

    init() {
        let params = HVCameraExteriorParameters()
        HVPartnerSDK.sharedInstance.initialize(parameters: params)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
