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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056676.zip",
            checksum: "8be66f72419923bb22248011e77740ff13d888c43cfcf41d44352ad57b332706"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056641.zip",
            checksum: "d1738441aadb9a01f0df69ac078ff0fb987db0c7451e8d756d1c423a23193ec4"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056648.zip",
            checksum: "a98e877a57e5e16f6519935945377bdfad996c9f3dc2552746e1e44cce1e70f0"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056653.zip",
            checksum: "a3bfb023d7f2016972c0bb44dc62269a0d153fe3f68b1fed3889349b319ce0ef"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056658.zip",
            checksum: "690d5e6f0d42a74de580e1aa2ea6ccbceac050f653affa892296f84468ac61aa"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056668.zip",
            checksum: "fce57cbb294b78104c3cbedc1ee3bd54ce52d0eae32cc74e42a0d0fd2b144ea8"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056673.zip",
            checksum: "77dd126c043b4393b3f6dc91aef60301a20e0b1a5e1693c78a826e2f3477c508"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056680.zip",
            checksum: "867b4ae3b1cabb1106ba00ad05700db5bd85652b834698a5eb2fa647c1a4c193"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056744.zip",
            checksum: "e36d9fe5524ad9ab1f2f16427f958f84b39af7e6c6b84e916dbc039a7b1d0302"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056683.zip",
            checksum: "d70ab437795feedac48b9d081115f8f9408f33ac6bb50dd76909f5b427472a3b"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056733.zip",
            checksum: "43daa6e73dfc7cf98c6c1d3716e2b6f8cfa2bf7093138513a44069abeb7259f7"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056729.zip",
            checksum: "89198877d8ba24dc8bc0f33e545eba7e361939c8691c34a5106b7acc303f3fad"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056738.zip",
            checksum: "8d6754c08714a561745678328303284ee9891dec0dcdbc60e4e02a9756cbbc54"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/312056749.zip",
            checksum: "efea852932fa727c2a8d512bb2c83330b3cfabb9607745ea255d50463f18090f"
        ),
    ]
)