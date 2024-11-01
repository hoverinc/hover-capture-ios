import SwiftUI

public struct HVColorStateList {
    // ...
    public init(active: Color? = nil, pressed: Color? = nil, inactive: Color? = nil) {
        // ...
    }
}

struct HVTheme {
    // ...
    public init(
        hoverCapturePrimaryButtonBackground: HVColorStateList? = nil,
        hoverCapturePrimaryButtonText: HVColorStateList? = nil,
        hoverCapturePrimaryButtonShadowBackground: HVColorStateList? = nil,
        hoverCaptureSecondaryButtonBackground: HVColorStateList? = nil,
        hoverCaptureSecondaryButtonText: HVColorStateList? = nil,
        hoverCaptureSecondaryButtonShadowBackground: HVColorStateList? = nil,
        hoverCaptureSecondaryButtonStrokeColor: HVColorStateList? = nil,
        hoverCaptureSecondaryButtonStrokeWidth: CGFloat? = nil,
        hoverCaptureButtonBorderRadius: CGFloat? = nil,
        hoverCaptureToolbarIcon: Color? = nil,
        hoverCaptureToolbarBack: Image? = nil,
        hoverCaptureToolbarHeader: Color? = nil,
        hoverCaptureToolbarBackground: Color? = nil,
        hoverCaptureTextHeading: Color? = nil,
        hoverCaptureTextLight: Color? = nil,
        hoverCaptureIllustrationSubStroke: Color? = nil,
        hoverCaptureGridItemBorder: Color? = nil,
        hoverCaptureGridItemBackground: Color? = nil,
        hoverCaptureGridItemBorderRadius: CGFloat? = nil,
        hoverCaptureIllustrationMainStroke: Color? = nil,
        hoverCaptureTextLink: Color? = nil,
        hoverCaptureTutorialImageOverlayStroke: Color? = nil,
        hoverCaptureGalleryDeleteConfirmHeader: String? = nil,
        hoverCaptureGalleryDeleteConfirmBody: String? = nil,
        hoverCaptureError: Color? = nil,
        hoverCaptureCameraBackground: Color? = nil,
        hoverCaptureBadgeBackground: Color? = nil,
        hoverCaptureBadgeStroke: Color? = nil,
        hoverCaptureBadgeText: Color? = nil,
        hoverCaptureSuccessIcon: Image? = nil,
        hoverCaptureSuccessNextSteps: String? = nil,
        hoverCaptureSuccessHeader: String? = nil,
        hoverCaptureSuccessMessage: String? = nil,
        hoverCaptureSuccessConfirm: String? = nil,
        hoverCaptureFooterCtaBackground: Color? = nil,
        hoverCaptureDecorativeIcon: Color? = nil
    ) {
        // ...
    }
}
