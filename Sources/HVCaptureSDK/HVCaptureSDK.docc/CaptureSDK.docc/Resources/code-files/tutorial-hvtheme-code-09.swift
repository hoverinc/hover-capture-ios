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
        permissionCameraHeader:
            "Camera permissions header is customizable",
        permissionCameraBody:
            "Camera permissions body is customizable",
        permissionCameraConfirm:
            "Camera permissions button is customizable",
        permissionCameraDeniedButtonText:
            "Camera permissions denied button is customizable",
        permissionLocationHeader:
            "Location permissions header is customizable",
        permissionLocationBody:
            "Location permissions body is customizable",
        permissionLocationConfirm:
            "Location permissions button is customizable",
        galleryDeleteConfirmHeader:
            "Photo gallery delete header is customizable",
        galleryDeleteConfirmBody:
            "Photo gallery delete confirmation button is customizable",
        successIcon: Image(systemName: "checkmark.seal.fill"),
        successMessage: "Success screen message is customizable",
        successNextSteps: "Success screen next steps are customizable",
        cameraCaptureBackground: .teal,
        toolbarBackground: .orange.opacity(0.3),
        toolbarHeader: .purple,
        textLink: .yellow,
        illustrationMainStroke: .white,
        illustrationSubStroke: .black,
        gridItemBorder: .purple,
        gridItemBackground: .gray,
        gridItemBorderRadius: 30,
        primaryButtonBackground:
            HVColorStateList(active: .init(uiColor: .lightGray), pressed: .gray, inactive: .init(uiColor: .darkGray)),
        primaryButtonText:
            HVColorStateList(active: .red, pressed: .green, inactive: .blue),
        primaryButtonShadowBackground:
            HVColorStateList(active: .mint, pressed: .green, inactive: .teal),
        buttonCornerRadius: .infinity,
        secondaryButtonBackground:
            HVColorStateList(active: .red, pressed: .indigo, inactive: .pink),
        secondaryButtonText:
            HVColorStateList(active: .black, pressed: .gray, inactive: .white),
        secondaryButtonShadowBackground:
            HVColorStateList(active: .green, pressed: .mint, inactive: .teal),
        secondaryButtonStrokeColor:
            HVColorStateList(active: .blue, pressed: .teal, inactive: .brown),
        secondaryButtonStrokeWidth: 10,
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
                    identifier: JobIdentifier(jobID: 42, localID: UUID()),
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
