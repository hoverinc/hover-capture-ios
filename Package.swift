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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945292.zip",
            checksum: "87a40cd9a405efc0d0bc9f1546797b0ceed16d7c3b77c1e29329199d0eb93d8a"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945297.zip",
            checksum: "226e0686bc528d189e98de23738253cd076c0138dbfc45f068a487291bb842ca"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945311.zip",
            checksum: "0aa0304ec230d192a1363d4f397a79a0cffac0a3035368e4285d5c22d603d089"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945328.zip",
            checksum: "78b4b271c8952c8c5ae8b465d64b4495275b5d0e82645adc4ce142e76f7787e4"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945310.zip",
            checksum: "db5ae82b1edd3d961b066004688b88d5259b9d44053ad7e8e0df14fb0733b527"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143945331.zip",
            checksum: "5fd1d60ba3df614319e72f56723bc3ddb90539aca5868277994669cf783c2021"
        ),
    ]
)