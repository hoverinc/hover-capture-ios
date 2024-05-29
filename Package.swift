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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803548.zip",
            checksum: "bef14b4bff27c6fe42325100353d012df5979b6e400ecfde28719f68d10b6dc0"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803550.zip",
            checksum: "d62e8ec9b1bd29f476edc08183947444ad6d6386640de7c1faaf787aa7ffcd4b"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803553.zip",
            checksum: "dabf48d668a52cf41541b0870d338182d563621d1a4048e3a238fa224cd5a26c"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803556.zip",
            checksum: "3db75f0b27d79b95ec1f14df5cbe81ef960e707713e3b16623824bba1d1ef6ec"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803552.zip",
            checksum: "1478e82ac16eb165ee0e0927cdd229fdff5ef70b73e60463806e0097644f04be"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/170803561.zip",
            checksum: "7d7ae848f61a7e46a4ec32f4e5577a6d7f7c8a701fd24bf2a87731ddc4666206"
        ),
    ]
)