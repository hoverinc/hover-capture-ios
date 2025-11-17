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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399376.zip",
            checksum: "f76a444192d75f46ca3921b07bd718073a4e717884a274627bec8ab59c767dbe"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399319.zip",
            checksum: "efd17e2fe5963a2e90e89b21f3f62c3bf2d697633d0431d4fc0d1bd3f326bdc1"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399330.zip",
            checksum: "e097f7c59acd542ed0f4743d3d1113d639dd7c9d1cab08b7fd11d9fe56ac47d7"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399353.zip",
            checksum: "b566713983c60454c0a212517dcf248ac18783a9f5d6e2f84530650eb415f266"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399359.zip",
            checksum: "8942dcfab3fa7b1cdacaec65ee9a088ebadb0eb92e37c1947c39e5977d97087d"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399364.zip",
            checksum: "1032520ec2977df922f121b44f8fb800e35a9e5831b0a5812f8d1025a6106766"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399369.zip",
            checksum: "211a8320df639895cff859a177460837d0c90d2828eeee6f543342f77e384250"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399380.zip",
            checksum: "3659f24db0acf9070e624dbe52ab73d901fda19a748369a87ad5923b1fbbf030"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399423.zip",
            checksum: "9d4e3bb7ede238b544cc732043852fa43495d45e87e6e198bf69f8d8c7aa04b3"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399388.zip",
            checksum: "eb620b16a1b2127850aabe0ef3903d04c32ad65685a773319aeecaa312c7c427"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399400.zip",
            checksum: "195116315093d45385c22457d4bbf0eb1c235381847eb52980c48df52c2a1c6e"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399394.zip",
            checksum: "78b72675a65d47d0544c69e0ed7cd67ee9b9928eb93c19c30cf0d066dc40f9f5"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399410.zip",
            checksum: "d8decf9965cff8fe2dcda68ad331b027412bfd96e10daac5a1f3a3f293585268"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317399432.zip",
            checksum: "7d3a5ddeab80eff82c8fc25a8f7f2615109266edfd0ecfcc3257898594f64321"
        ),
    ]
)