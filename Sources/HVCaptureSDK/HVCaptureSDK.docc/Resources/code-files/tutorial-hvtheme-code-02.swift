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
        primary: Color? = nil,
        onPrimary: Color? = nil,
        primaryContainer: Color? = nil,
        onPrimaryContainer: Color? = nil,
        secondary: Color? = nil,
        onSecondary: Color? = nil,
        subtleElements: Color? = nil,
        error: Color? = nil,
        onError: Color? = nil,
        surface: Color? = nil,
        onSurface: Color? = nil,
        textPrimary: Color? = nil,
        textSecondary: Color? = nil,
        textPrimaryDark: Color? = nil,
        footerCTABackground: Color? = nil,
        toolbarBack: Image? = nil,
        toolbarClose: Image? = nil,
        permissionCameraHeader: String? = nil,
        permissionCameraBody: String? = nil,
        permissionCameraConfirm: String? = nil,
        permissionCameraDeniedButtonText: String? = nil,
        permissionLocationHeader: String? = nil,
        permissionLocationBody: String? = nil,
        permissionLocationConfirm: String? = nil,
        galleryDeleteConfirmHeader: String? = nil,
        galleryDeleteConfirmBody: String? = nil,
        successIcon: Image? = nil,
        successHeader: String? = nil,
        successMessage: String? = nil,
        successNextSteps: String? = nil,
        cameraCaptureBackground: Color? = nil,
        toolbarBackground: Color? = nil,
        toolbarHeader: Color? = nil,
        toolbarIcon: Color? = nil,
        textLink: Color? = nil,
        illustrationMainStroke: Color? = nil,
        illustrationSubStroke: Color? = nil,
        gridItemBorder: Color? = nil,
        gridItemBackground: Color? = nil,
        gridItemBorderRadius: CGFloat? = nil,
        primaryButtonBackground: HVColorStateList? = nil,
        primaryButtonText: HVColorStateList? = nil,
        primaryButtonShadowBackground: HVColorStateList? = nil,
        buttonCornerRadius: CGFloat? = nil,
        secondaryButtonBackground: HVColorStateList? = nil,
        secondaryButtonText: HVColorStateList? = nil,
        secondaryButtonShadowBackground: HVColorStateList? = nil,
        secondaryButtonStrokeColor: HVColorStateList? = nil,
        secondaryButtonStrokeWidth: CGFloat? = nil
    ) {
        // ...
    }
}