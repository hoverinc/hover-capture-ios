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
                "HVTheme",
                "HVUtility",
                "ObjcExceptionBridging",
                "_HoverSDK",
                "_HVAVCamera",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "HoverSDKExperimental",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172905.zip",
            checksum: "fe7169a144ace94e14af86278592dfa3b4e622d1f3f09c50660460c36dee48bb"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172856.zip",
            checksum: "f5ac1d5c18319307ef2405c2e9917599334f7db2348f24f80db05af0d7ce56a3"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172860.zip",
            checksum: "365684b2fb4ea2e2b803ef7473a7b5be478813d61ff350bd4a6253383e8a6de1"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172866.zip",
            checksum: "dfe8c712ab3c98626458cd2ddbe1e7e632d442a5a3e5bab4994c32d94eaa01ee"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172869.zip",
            checksum: "316fa65df3ea29c136a606977148b8cca23dc242b9bca2b0a0c0a45cd48cb965"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172872.zip",
            checksum: "559656bc99bb14f4aa77b1d3cc95e24819880273f8fdd8ba96d5905684d9eb2b"
        ),
        .binaryTarget(
            name: "HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172877.zip",
            checksum: "8e64cfca6c9c5cb429f8e9b8443ee96f5fb7c54cb3c6d776cf5b1b9afcc10f5d"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172891.zip",
            checksum: "4c1a5853ac549266c952daf5ba7413801ed2cc75cf8032d79a5aa6e6c8b0b88d"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172907.zip",
            checksum: "bcd0349d3959358f29c7a5e86e20f4aedad582fa6f6e4c49c9fad03071f7ed79"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172917.zip",
            checksum: "76f6b8e3cb9dcc8ad67afedad834d2885ee1576c2da629e24c3a33fa44fc7b90"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172910.zip",
            checksum: "dc1a8421f137cb40b13ef04084a2ee9c88db87ace85a61496fb47f37d2c2d67f"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172916.zip",
            checksum: "9ffd65ca7c4a20d95c6264058ec336d8051580431a09fa7941ac207c913b97c0"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172914.zip",
            checksum: "d46c23424b94e99a0de7dd7b8310c5a9748d6b10b6b1026e9a4b39c139ef5532"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274172922.zip",
            checksum: "0697edb4caf0fccba6e0464b9e005ed4690028b26b9422e7da088b8c4f4575ca"
        ),
    ]
)