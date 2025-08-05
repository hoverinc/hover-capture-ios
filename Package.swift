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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614248.zip",
            checksum: "6db453ba7fe9865823659a0b4a4f960138c1be6b0060ab3da379abbaffe30677"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614221.zip",
            checksum: "e9878c373aeaa019176992ad8ac22ca5e0596f0c2bca2f9f62bb04532945bf92"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614223.zip",
            checksum: "c7cfeee6e9a919d2575824d85064a04da75ebaf5a715ffeb6a5c6889f0f11d4b"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614241.zip",
            checksum: "8121ca79d412f985d64589c04f19a08b27ed40dad69d04390eaaec8eb9a631aa"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614242.zip",
            checksum: "8d6988abaa1e973828bf5bf25cc70e7ea57288aa36b974f27b360144e1a6de07"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614244.zip",
            checksum: "1e2d6409021769e0eeea27df4a1d7464befc22c8cce2e96502eafb933068945f"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614246.zip",
            checksum: "be77ad7118ed8abbcd8bc7af3973f366061b635f5128c2f57e7de54b066a5190"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614250.zip",
            checksum: "8376f1c3b7e5e1c9278ea85aa4f74e5f472faa31dcffa42bbc6084e9c163c3b6"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614262.zip",
            checksum: "0d2a144c6a5bf1953a67870fb49b5915cae1da94a4213c5846cad956be9b552b"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614251.zip",
            checksum: "fd8e58dcfc5513bc93cf3c43b549152f1655d44cb7ef9df912e35ae65a33af0a"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614257.zip",
            checksum: "6ff925c9d26bbc71cf855345ef3f73b4afd59b34445d01fd560a0675c3e079eb"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614253.zip",
            checksum: "8d80a23e433ccb6485876a3e7790ac06853be65520ea35f432fe6a069ac2c74c"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614259.zip",
            checksum: "27f06ed8ef9df9bef7288f526283f259550f9787fb94f25783a4373f93512e15"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/279614264.zip",
            checksum: "853e60b3eab05a6d826cfbcd0455f5410043f241e36f8f4e94c8979279aa343c"
        ),
    ]
)