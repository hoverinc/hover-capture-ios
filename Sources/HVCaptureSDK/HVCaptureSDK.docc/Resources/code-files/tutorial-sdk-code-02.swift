import SwiftUI
import HVCaptureSDK

@main
struct binarysdkexampleApp: App {

    init() {
        let params = HVCameraExteriorParameters()
        HVCameraExterior.sharedInstance.initialize(parameters: params)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
