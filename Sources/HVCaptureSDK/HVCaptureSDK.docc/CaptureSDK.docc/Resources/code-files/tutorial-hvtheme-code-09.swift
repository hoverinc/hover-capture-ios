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
        toolbarBack:
            Image(systemName: "paperplane"),
        toolbarClose:
            Image(systemName: "heart.slash"),
        permissionCameraHeader:
            "Camera permissions header is customizable",
        permissionCameraBody:
            "Camera permissions body is customizable",
        permissionCameraConfirm:
            "Customizable Camera button",
        permissionCameraDeniedButtonText:
            "Camera permissions denied button is customizable",
        permissionLocationHeader:
            "Location permissions header is customizable",
        permissionLocationBody:
            "Location permissions body is customizable",
        permissionLocationConfirm:
            "Customizable Location button",
        galleryDeleteConfirmHeader:
            "Photo gallery delete header is customizable",
        galleryDeleteConfirmBody:
            "Customizable delete button",
        successIcon: Image(systemName: "checkmark.seal.fill"),
        successHeader: "Success screen header is customizable",
        successMessage: "Success screen message is customizable",
        successNextSteps: "Success screen next steps are customizable",
        cameraCaptureBackground: .teal,
        toolbarBackground: .orange.opacity(0.3),
        toolbarHeader: .purple,
        toolbarIcon: .mint,
        textLink: .yellow,
        illustrationMainStroke: .white,
        illustrationSubStroke: .black,
        gridItemBorder: .purple,
        gridItemBackground: .gray,
        gridItemBorderRadius: 30,
        primaryButtonBackground:
            HVColorStateList(active: .black, pressed: .gray, inactive: .init(uiColor: .darkGray)),
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
        secondaryButtonStrokeWidth: 10
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
