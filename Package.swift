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
                "HoverSDKExperimental",
                "HVBaseSDK",
                "HVLog",
                "HVNetworking",
                "HVPersistence",
                "HVSession",
                "HVUtility",
                "ObjcExceptionBridging",
                "_HoverSDK",
                "_HVAVCamera",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_HVTheme",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "HoverSDKExperimental",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881119.zip",
            checksum: "0e4c1cc988259b250425f890dd4931ff2b3f72b7aef1de6e0ca4dbf38fec5fdd"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881088.zip",
            checksum: "a1ca793d95f71a2136a00a234acc3f08901a4c77a58a22a09da21d55250b4a00"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881092.zip",
            checksum: "5da7fa3acdb87c66e216ac710526cd754d6f6f7688bc56a1fd3d851b013d3afe"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881095.zip",
            checksum: "72cb4eb27fa797577bd8879ba1b62132f91b18fc63c982de2494a9cd25d228b3"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881097.zip",
            checksum: "2772e3daaa6079959d67c5b92e7e9dbda67aeb55c210d1100f563a8e5420bb9a"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881108.zip",
            checksum: "cc9b6eaa54453f2ca5ab3797dce6b3517e4e25ff3446abad3c50abbee32c6ad8"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881111.zip",
            checksum: "70e512e3ad2b6c518c71a31766433378847d79e442f4813a3a472cc1d65f8c96"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881120.zip",
            checksum: "912163a7d38755502ab4de0349481b14e9ccd8b308661bc2b1f117622f832aa5"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881137.zip",
            checksum: "3bca247fd0d1eaa59457823b54b6e7e9c6803cdd4fed789fe445c1ccc51249a1"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881123.zip",
            checksum: "468ac56ec1088c117d49971d73ed0d3a91d1b5aee60eb4ec866ffae7dd4537e2"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881131.zip",
            checksum: "7a5a1de9149907c7ad86f21ca810d66b65a007c4f9b92048a088e1895d3f2e0a"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881126.zip",
            checksum: "f3e4cbfca71866dc1c5aa70f5ce5d8390cbf7b42b0a1ff85d4625cb05ef4b70e"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881133.zip",
            checksum: "035b37f73ec176fa8b26a1f71492b238764a3da8a05035411a5fcdd5cd9f2998"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/296881140.zip",
            checksum: "a53f3d2293e5437209b9243feec095bddc1fd9cba8b250123dcb4e4de7eb6962"
        ),
    ]
)