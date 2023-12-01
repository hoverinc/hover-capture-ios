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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449029.zip",
            checksum: "a53c6213b6f592391267d37d4bf7eeb31621ebdc813580255330932e10b4ebd6"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449030.zip",
            checksum: "f29aa81236d690b08e8597da69a6a3e7096eb47f16711a86e3ad3cfe3318e46f"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449032.zip",
            checksum: "39c9d53faf803b8f520be6fb5eedb31f6f10d70ed407b15d133d5b0a39c9319d"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449033.zip",
            checksum: "5c93e669755408225ab38063e2431fa015b6072d0ff594d9a2f73068e1d44447"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449031.zip",
            checksum: "ecc34ea6b56c0bdf4cf67f1ead5d4adc9e43acc4148b2de1fc34225585202505"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138449038.zip",
            checksum: "672c519b4fe116143ba833834d42d46430afb3c14c934b8d06ff04a35e8dbe13"
        ),
    ]
)