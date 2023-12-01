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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450633.zip",
            checksum: "ff0c06456d4921738c62455e4ef7b543813133332d3993c9fa371dc5805cd2da"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450636.zip",
            checksum: "f6d7a5ef4039a41caf97f1459881cc7ce66ba0adeda03c22dedcd96a5b648936"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450640.zip",
            checksum: "21e160d06ae6546aae824b64573bcaca22a969b4ce8facf7f8b3d92a71971156"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450671.zip",
            checksum: "50862f676316a06beff14e19d4641e0dab74c267863fb044955116f45a4edf3e"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450638.zip",
            checksum: "8133d0d5853ad2dcb45f9c4ed156967cfbcd2b45ae253a247e8f1edb2438aca5"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138450677.zip",
            checksum: "1e2349f606bc3442ca00c8ade5dcfa3f78648edfc69a01e7b9dd5b525d91d092"
        ),
    ]
)