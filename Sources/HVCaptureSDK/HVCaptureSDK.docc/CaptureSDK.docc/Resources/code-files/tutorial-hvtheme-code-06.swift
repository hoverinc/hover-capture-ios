import HVCaptureSDK
import SwiftUI

extension HVTheme {
    public static let tutorialTheme = HVTheme(
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
        textSecondary: Color(uiColor: .darkGray),
        textPrimaryDark: Color(uiColor: .lightGray),
        footerCTABackground: .gray,
        toolbarBack: Image(systemName: "paperplane"),
        toolbarClose: Image(systemName: "heart.slash"),
        successIcon: Image(systemName: "checkmark.seal.fill"),
        cameraCaptureBackground: .teal,
        toolbarBackground: .orange.opacity(0.3),
        toolbarHeader: .purple,
        textLink: .yellow,
        toolbarLogo: {
            AnyView(Image(systemName: "wrench.and.screwdriver.fill")
                .padding(.bottom, 12))
        }
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
                    clientIdentifier: "String",
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
