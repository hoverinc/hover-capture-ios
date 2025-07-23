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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464383.zip",
            checksum: "1a9adabdadf49455b53ab1bec3e91c24c4efc819e2b8e75bb84d895870e6430f"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464359.zip",
            checksum: "658327f30ae2cc504194b24405d943bdbd11b962c5058c5a6af51eca90416900"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464367.zip",
            checksum: "23e63ab3b06731c81ab2396d772533e6ad8ce8eb635b0b4e4aa5c94db277a148"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464369.zip",
            checksum: "5e175f8721170b918c56501146bad48a0b5dc1bfcc36a0111bcab28239fe0c7a"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464371.zip",
            checksum: "6a4ee33173e704a764f1ecd5758b31aacdc0f3fe66426b8512b90123ef9ddf19"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464376.zip",
            checksum: "cd2104d374c2f9bc2e940bc433a0b28c15560d5552ac95a9788a0a31815afbe2"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464379.zip",
            checksum: "6dc225c992a1d3cc053aeb43fee932c552b35e451a8d81c1c380362185ee5273"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464385.zip",
            checksum: "449e7d3c13c0477afcf73798b765a813fc2d43d43a7fae7773b1563ca87fb9cf"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464409.zip",
            checksum: "cf65d7af8ebdcebb29956101ecf58b86eaca5f16a0647977b3ab2853bbb2715a"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464388.zip",
            checksum: "4fa6e7e16e2537e001a0ad68b5de3e91a7ec0b507c978537f8ad0971041cfc26"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464398.zip",
            checksum: "286ece2a22e8ffc321ac88659dc8ccbee9f4d10677eb56a1ff0fcb4cc5e7e404"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464395.zip",
            checksum: "9fe6733c96fa0b269524793ca825f1cd245063e2f440b360c77a6f05c5c0bb61"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464405.zip",
            checksum: "02df8c8ab372c6851f99edb6f53511fb5e23e7413cb13628164c8bdea8ce45f5"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275464410.zip",
            checksum: "7a1df5de2e46e7f567addf99b6eebf7d116ca79f25e1834b9ba508b9a73cf9a1"
        ),
    ]
)