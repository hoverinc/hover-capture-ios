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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800855.zip",
            checksum: "2b2d21698fdb82a9afc9e3e3f05c68b04659a8fd31e5568f7e3d3b149d2971b5"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800824.zip",
            checksum: "15258c89b9da85cd39460c5e65f0f973245367f3b081cf9ef2413006cc3f0fa0"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800832.zip",
            checksum: "05b3743b1ce3607e708a05bff68c531b8d2b4533146f5810a135a0170b904642"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800837.zip",
            checksum: "1d28485854a53fbbaa20062a8b145ab68e177838fb5ab34feb9491d7bcbe1c28"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800842.zip",
            checksum: "8880eeb04b66337546e3b8a5027c2d8d0e911bf51dac3dde1e429e2b904a0513"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800843.zip",
            checksum: "2d55c26b33e5cad121e7d757d30c6e59afba13f3cbf024b5c15940ee543ed1b6"
        ),
        .binaryTarget(
            name: "HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800846.zip",
            checksum: "838828cf22634aac11319ba122baf3d54a6e41ad5f1f751ebe7a93521756dda4"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800850.zip",
            checksum: "c938e22f3d8f7c772e4545a8657b47a9db12d983ebe9812a4e7b1614374a213e"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800859.zip",
            checksum: "eca7c6a38e6304aaa22e33ce13f8989fff0bc825cf643b994f59b63451189c89"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800875.zip",
            checksum: "72930b228d2502dfc97582e47a2aef2050f7e1b4723531da46a77bc9b89aac88"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800862.zip",
            checksum: "9ec381df658d415d9e1d89bd1b512a23ed942641c559237d62e6ee1f0b028f11"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800870.zip",
            checksum: "0b1469a5b1db99dfca55d0432f55de1aec66c58b241420c16824eeb965b715bc"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800864.zip",
            checksum: "a6bb6ddadde2056312f99d8eecc2d6b5040b16b5c78884b4caebf8db0cdba229"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/273800879.zip",
            checksum: "550eedbe78660992f862368cf51f95e49a6cd6e7266f4704fc30715307e2238d"
        ),
    ]
)