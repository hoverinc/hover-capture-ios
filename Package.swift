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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219762.zip",
            checksum: "d5b2a926f77ec38abba37d4c34d6857e446c35709614d4edffe245c2db750648"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219745.zip",
            checksum: "1c77cd04cb12cce24f8a26c7de5714a4427a4b394631aca12764657ed20ded2d"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219747.zip",
            checksum: "0da5beb061eed2a00254ea30cd16cbaa6858f424d9fabe74cd5a23680f64c00d"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219748.zip",
            checksum: "ba131df65854e95aa0a33171d6992d964f3a7446c5a1707c2dbca0b20bc5d8bb"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219751.zip",
            checksum: "526d1d1047e6c3265027de73b4d5ea568dc282c1325dd4b2916a7206f2b9df59"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219757.zip",
            checksum: "b61c9038bc7790647b85aa6a8e8078d2e21fe45f1a70a0ad7bb74370d66d8462"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219758.zip",
            checksum: "a29eda8aac3e3f3485d3d6f1b10df1b7e3477fbd83338647624f8ed2838e8796"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219763.zip",
            checksum: "4046ad7821d61d23c81f5444cde35cb86b65b7f97a5feeaf90208b027ef115f5"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219785.zip",
            checksum: "0fdd550dc67b7c349993b8b71da4dd22ec8906852ffdce48cabf9808988a5aae"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219766.zip",
            checksum: "27f90f8a6ab612d73c7554a83476f47e15ff95f99bdac8fed6482dd4e9f5f786"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219771.zip",
            checksum: "9bd688f56a7c78f977c65246bc04cbb82ae102f9ad7021c52711821f175ebf47"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219769.zip",
            checksum: "ea966c108c1428964f86347786e3cce079510a389d469465ef9fe6acba5c69ea"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219784.zip",
            checksum: "63b58fe842350b3573be483537de6a9a173143cc12942f308d64cf4528fb381c"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/278219789.zip",
            checksum: "b1193cbf7be09adfda910c96ffa37e87343512a01aca4652583654b0f8584b62"
        ),
    ]
)