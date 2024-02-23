import HVCaptureSDK
import SwiftUI

extension HVTheme {
    static let tutorialTheme = HVTheme(
        primary: .green,
        onPrimary: .black,
        primaryContainer: .blue,
        onPrimaryContainer: .black,
        secondary: .mint,
        onSecondary: .black,
        subtleElements: .indigo,
        error: .red,
        onError: .pink,
        surface: .pink,
        onSurface: .red,
        textPrimary: .black,
        textSecondary:
            Color(uiColor: .darkGray),
        textPrimaryDark: .gray,
        footerCTABackground:
            Color(uiColor: .lightGray),
        cameraCaptureBackground: .teal,
        toolbarBackground:
                .orange.opacity(0.3),
        toolbarHeader: .purple,
        toolbarIcon: .mint,
        textLink: .yellow
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
                    identifier: JobIdentifier(jobID: 42),
                    uploadSecret: "String")
                var settings = HVCameraSettings()
                settings.theme = .tutorialTheme
                do {
                    try await HVCameraExterior.sharedInstance
                        .startCaptureSession(settings: settings,
                                             info: jobInfo)
                    try await HVCameraExterior.sharedInstance
                        .startCaptureFlow()
                } catch {
                    // ...
                }
            }
        }
    }
}
