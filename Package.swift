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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384528.zip",
            checksum: "a1688654a0b8e923567eeaf1716ef924bd925ac59ff1276c851d7b62fc62d638"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384495.zip",
            checksum: "620dd6ebf75e3d1e07170952d852051cc49f38cdd524638c888eb7e482cc2354"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384499.zip",
            checksum: "c8a13755c99a1777e0f961beda96ccfa8da06e6f3ffb8a1c9a1d3842e8fafa5b"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384503.zip",
            checksum: "9447b878a790638c31029951aceb1317b310a5e4d836071182e44d4b55cdf243"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384507.zip",
            checksum: "a79fa2ed9fb88bdabdc3cd3b870876cabb67a21f39dcde81f9f07c59c4d71572"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384516.zip",
            checksum: "78bd6eff2723d96a4e2373ed121e973a251075e531b64915ac20529bf5d28661"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384523.zip",
            checksum: "bee7ae1f71722b297ccc639a0036434da485902ba880a077dc0d849c04b6d049"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384533.zip",
            checksum: "1f83f0b6bece98f671135fc588fd9dccac572f262fffd23d8d93f0097f92e191"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384558.zip",
            checksum: "35ce0e7dd3dbf4ed3e615268b780762ba292aebc9ac2a3385fbca2a9538f2c97"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384537.zip",
            checksum: "98869cd7057c244d184e0f36b8d3231d4c736ae4d0f6e34265c7ca1f51f084e1"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384543.zip",
            checksum: "e96351c1090724f83f04c72fc91f7ccf5a841ebf56ed303af5518926dbd82df7"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384540.zip",
            checksum: "6e4532aa0aa21d9270b5dfe638f7a9c883866282105a3d49fda986c9623aeec5"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384548.zip",
            checksum: "fd4d2bdedbde2d04b850d56470374d79aaa4378b1f3ea8aaabf83b6778bc90ca"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/286384563.zip",
            checksum: "2b2791a926cfbda52a101816f009a9aa8b44ec395c63e9e544f136e857f2abfc"
        ),
    ]
)