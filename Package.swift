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
            ]
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294318.zip",
            checksum: "220336e185ca980a3cd4b210a92d77f1005a932e4c5bf17dc489fe1780789b4b"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294319.zip",
            checksum: "aec05b5a1d4397086bbc668c52f645f451fa1d8045d8dc2d99f8d84b1d0c57ce"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294324.zip",
            checksum: "6db5e96bbb97f80e9a51a36cd1854897d0c80526316bc94f842a2411ea3c617a"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294334.zip",
            checksum: "b768ba747bc0b0d74376fa7eb44a05593ef6442ed898587371083b97557a9f39"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294322.zip",
            checksum: "eb6a2fddc886de92396d989e2849c61aac1d1f72138de669dc86205721cb0d58"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138294339.zip",
            checksum: "9ee9bbf882cdc3fab6cdeb7a273b27d9bc834e670b7cdcb34b2ad4a3e508fac2"
        ),
    ]
)