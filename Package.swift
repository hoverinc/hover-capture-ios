// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HVCaptureSDK",
    products: [
        .library(
            name: "HVCaptureSDK",
            targets: ["HVCaptureSDK"]
        ),
    ],
    targets: [
        
        // -- Public -- //
        
        .target(
            name: "HVCaptureSDK",
            dependencies: [
                "ObjcExceptionBridging",
                "_HVAVCamera",
                "_HVCameraExterior",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481798.zip",
            checksum: "fb207c79d255f3a840f2505dcb5cdb9c0daf3ea35cfb4d19b031098539e39abc"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481800.zip",
            checksum: "f20287caf60df7e328c2bcae295cdd84f32662704f03f720c9fd438189ae4836"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481803.zip",
            checksum: "8b91bc69283da52cfbb8a31b342839a7442c7e03a050238ae7d26a763aceccef"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481805.zip",
            checksum: "573dd75bca92e4f6f14d8d43a4b0f2f387576f7cddb3c05f60e7c3860e576608"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481801.zip",
            checksum: "ed771276f704c37b12aa291ff746bb99263d223675de4bd1b3384e2e0784d280"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/164481807.zip",
            checksum: "e5d6f5e2aaf49a10a1ea8dd087047e5cf44fb7e8e6eca61715f563d78677fcaf"
        ),
    ]
)