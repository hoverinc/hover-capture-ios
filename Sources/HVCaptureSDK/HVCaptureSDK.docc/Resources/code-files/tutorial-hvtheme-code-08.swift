import HVCaptureSDK
import SwiftUI

extension HVTheme {
static let tutorialTheme = HVTheme(
    hoverCapturePrimaryButtonBackground:
        HVColorStateList(
            active: .black,
            pressed: .blue,
            inactive: .brown),
    hoverCapturePrimaryButtonText:
        HVColorStateList(
            active: .cyan,
            pressed: .gray,
            inactive: .green),
    hoverCapturePrimaryButtonShadowBackground:
        HVColorStateList(
            active: .indigo,
            pressed: .mint,
            inactive: .orange),
    hoverCaptureSecondaryButtonBackground:
        HVColorStateList(
            active: .pink,
            pressed: .purple,
            inactive: .red),
    hoverCaptureSecondaryButtonText:
        HVColorStateList(
            active: .teal,
            pressed: .white,
            inactive: .yellow),
    hoverCaptureSecondaryButtonShadowBackground:
        HVColorStateList(
            active: .black,
            pressed: .cyan,
            inactive: .indigo),
    hoverCaptureSecondaryButtonStrokeColor:
        HVColorStateList(
            active: .pink,
            pressed: .teal,
            inactive: .black),
    hoverCaptureToolbarIcon: .blue,
    hoverCaptureToolbarBack: Image(systemName: "arrowshape.backward.circle"),
    hoverCaptureToolbarHeader: .gray,
    hoverCaptureToolbarBackground: .mint,
    hoverCaptureTextHeading: .purple,
    hoverCaptureTextLight: .black,
    hoverCaptureIllustrationSubStroke: .yellow,
    hoverCaptureGridItemBorder: .purple,
    hoverCaptureGridItemBackground: .black,
    hoverCaptureGridItemBorderRadius: .infinity,
    hoverCaptureIllustrationMainStroke: .red,
    hoverCaptureTextLink: .green,
    hoverCaptureTutorialImageOverlayStroke: .indigo,
    hoverCaptureError: .yellow,
    hoverCaptureCameraBackground: .indigo,
    hoverCaptureBadgeBackground: .black,
    hoverCaptureBadgeStroke:
        Color(
            hue: 0.5,
            saturation: 0.5,
            brightness: 0.5,
            opacity: 0.5),
    hoverCaptureBadgeText:
        Color(cgColor:
                CGColor(
                    red: 1.0,
                    green: 0.5,
                    blue: 0.3,
                    alpha: 0.9)
             ),
    hoverCaptureSuccessIcon: Image(systemName: "paperplane"),
    hoverCaptureSuccessNextSteps: "You did it!",
    hoverCaptureSuccessHeader: "Great Job!",
    hoverCaptureSuccessMessage: "Hooray!",
    hoverCaptureSuccessConfirm: "Wooohoo!",
    hoverCaptureFooterCtaBackground:
            .green.opacity(0.5),
    hoverCaptureDecorativeIcon: .gray
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
