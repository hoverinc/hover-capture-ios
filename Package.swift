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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833928.zip",
            checksum: "c173ed0521d26904d3e8a6ad8e1a1f033bf19d001fa7178915ba38e2464913b5"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833930.zip",
            checksum: "7d607c4656cd4627530a2e6c6c760753208ef082b3a04c45861c0c4d69bfef9f"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833936.zip",
            checksum: "2552e718bd803744713475cdc1e4468a69ebe03780c02cd759a01a92aeae8945"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833941.zip",
            checksum: "1ef5362f7bd6c16a4016ca4213b0b08637393f82fc80c0c053c437ae547787ad"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833932.zip",
            checksum: "1a306abb246e6a33ec4cd17ce4749da438ce65f7ff1ff3d7046fda98e52d74b4"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/161833944.zip",
            checksum: "1cacc3e9b9726998bad1d625cc663c949a2b5167ca1ed31710591ba500bea418"
        ),
    ]
)