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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938534.zip",
            checksum: "c8bfae0f1ac936ad0e9997bc6279be3eaccc808339b92d7f66111c2cfcf6182b"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938535.zip",
            checksum: "2c011105519c67c8112c6607d72050284f49bd0db950428cadc42efa19eec96d"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938539.zip",
            checksum: "ec271420212588f1ad9736c0926be2b8ef7733d5ed3187f478e26da0c1092936"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938541.zip",
            checksum: "e3b4f2ea829dc382161751fa57c8996bbd2479b9aac256e672ab87108def432f"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938537.zip",
            checksum: "b9adcaf9fe802890175e5cceffccd83308c6b2682bd0af0ecc27da7707d72f50"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/162938543.zip",
            checksum: "4ce5cbb4096f50a0e0ec02dd1a23f96e7bc7006df3d24437c79371b801f01c33"
        ),
    ]
)