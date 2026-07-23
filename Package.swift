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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351061.zip",
            checksum: "fed689a729a50b0edecbca6e078a7a18870cbf9c9b913b14125fa867e9e630ae"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351048.zip",
            checksum: "e708ef5b6949963fc4632493818f576ebbebaf6e801c31d74d57d7826332c02f"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351049.zip",
            checksum: "7562d72fc83f1a485997adef905c69c9814f57357e2f2dd009bda3f0e917ad75"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351052.zip",
            checksum: "3eef1a7173279c7df6d379e2f92b33754cea997de9f8ef2c133475a55723b4fa"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351054.zip",
            checksum: "0eb54f8fcef480f9487841e142d3d7138cf60561aa61aa0651b1ee28f779a9ac"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351056.zip",
            checksum: "453ac6670313b423e5d0ceeb74846afb7f0facd1f41ed694835e57023814ac7a"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351057.zip",
            checksum: "efba3166ca73307d2accbcf335992d7e217c6aef1c1e60cf4cb561dbd03ea554"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351064.zip",
            checksum: "52205088d588f18eae10524084d9980eeacc593caf7677aeb3741df83a2675a3"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351096.zip",
            checksum: "6b58f2abfdeb0d7bc2117696dce84f1c7ab293f805a50de8bb5e4a78489740b7"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351065.zip",
            checksum: "32ae2d7e775ec5b67f25a11e28e3d7e16f1ae228f92253a50dad7ef631fc6690"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351073.zip",
            checksum: "9645ebdc2063d4030512a8b6c49a314d23b23f64c165c3cbebcf74bc6c4bd175"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351070.zip",
            checksum: "fdd2f5bf0fa6309e0737c556a778b3c2f40565b541d33875c7b86d616b277a6f"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351091.zip",
            checksum: "80b60d160777ffefa5f40bcc1350072845f228db8a77ef8469f16893d7f1ac4d"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/317351102.zip",
            checksum: "26049f3c4e01e632e8323684f01118581c37a1aaf4bbea18204a91b06408f3da"
        ),
    ]
)