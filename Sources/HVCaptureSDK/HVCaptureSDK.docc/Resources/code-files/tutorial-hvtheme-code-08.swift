import HVCaptureSDK
import SwiftUI

extension HVTheme {
    static let tutorialTheme = HVTheme(
        hoverCapturePrimaryButtonBackground: HVColorStateList(active: .red, pressed: .black, inactive: .grey),
        hoverCapturePrimaryButtonText: HVColorStateList(active: .green, pressed: .black, inactive: .grey),
        hoverCaptureTextLink: HVColorStateList(active: .yellow, pressed: .brown, inactive: .grey),
        hoverCaptureTutorialImageOverlayStroke: Color? .indigo,
        hoverCaptureGalleryDeleteConfirmHeader: String? "",
        hoverCaptureGalleryDeleteConfirmBody: String? = "",
        hoverCaptureError: .pink,
        hoverCaptureSuccessIcon: Image(systemName: "paperplane")
    )
}

struct ContentView: View {

    // ...

    var body: some View {
        NavigationView {
            Button("Start Capture") {

                // ...

                // NOTE: pretend this is filled with valid values...
                let jobInfo = CaptureJobInformation(
                    firstTimeUser: true,
                    identifier: JobIdentifier(jobID: 42, localID: UUID()),
                    uploadSecret: "String")
                var settings = HVCameraSettings()
                settings.theme = .tutorialTheme
                do {
                    try await HoverSDK.sharedInstance
                        .startCaptureSession(settings: settings,
                                             info: jobInfo)
                    try await HoverSDK.sharedInstance
                        .startCaptureFlow()
                } catch {
                    // ...
                }
            }
        }
    }
}
