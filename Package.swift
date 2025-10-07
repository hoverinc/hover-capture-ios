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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630587.zip",
            checksum: "b45870f0136714f8e5600c48d0f607e58be1ea59be00f175955de235979c864a"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630553.zip",
            checksum: "c4334fe8be2d6070a25041dd7e6aea5d8e566d6a6a4006daaf9a69c3f25e0b83"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630562.zip",
            checksum: "ad85e74c7ea4437db5bc2aaa7715e8264059106120249eceba5e8f8e0f4ad406"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630568.zip",
            checksum: "94f67e975fbde8f4d00ffb42eef5876b89cb2076c657b6f365a1537972b9c5d5"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630574.zip",
            checksum: "57c1c164f4acfbb735de25b1c069fcc045ad971492e160f24379d27585209b2f"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630576.zip",
            checksum: "1ca93d43a9bd85309c01e73ff82bf4051e73e70714731a25472b71666602e209"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630582.zip",
            checksum: "a5f457957e45b60f86f513f2b9f760907f106f92844590d480c1ecf677fdc7dd"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630590.zip",
            checksum: "f71cb8373377b734becc3da8b5be8807ff62c3e5d919e526923f52f7a7c18656"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630645.zip",
            checksum: "58b947a36b3d2bc059daa1be440dd5d6b79a888b519b927663f97ba34cc8d540"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630594.zip",
            checksum: "7e7a412484dd3390e64b403cb6eff4f1c3c8c86c30379eee6b6fa122860578d3"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630614.zip",
            checksum: "f5e22bfed5333a59c750562408f8efd20e63b37745916fc813e64fba255b989f"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630600.zip",
            checksum: "68a1f9e34ba68def7dffbb2ee8e399bea4279310218489fb7597f2ae2fd48e83"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630628.zip",
            checksum: "55dfb3616b736f6080a52d375c0bc5c36035e2fdec615ec100622f3580d212fe"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/301630649.zip",
            checksum: "3558ab6f6eebfac09246f06a3a0b9f88fcb54b3063489584226fedbc0fbc502e"
        ),
    ]
)