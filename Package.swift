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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011376.zip",
            checksum: "bea7d0bc385907b34f0518f8ed0688a45282ebf49019e683a4bb378850388b07"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011352.zip",
            checksum: "e85ce38f7a52d8ae1137012dc9c9fc638b84c74d1879d3314bcb5d445b16bffa"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011354.zip",
            checksum: "2141d6e2626094553fb316059e189c51860f91e11cfa2803db61c7b4ddba97d9"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011357.zip",
            checksum: "e6053e343327cfd7997ef520f08d142b69dc78ad92ccf3949de36e06f66ffe63"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011359.zip",
            checksum: "22f334f4703ff79675804ad3bca1311203424aa9c3096184a5a2b18aed78e2e5"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011362.zip",
            checksum: "b4df276891bda40db3ae7817477f5c04a8b402807cc89e9f43270581fd1447a7"
        ),
        .binaryTarget(
            name: "HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011363.zip",
            checksum: "297632be9915a461e631721ccbb3b88a00edf8859e91ae934923dd5031065f6a"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011370.zip",
            checksum: "59260548743890ee3225e08715f6d1022ffe975167ef1323cce79453737a34e4"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011377.zip",
            checksum: "b8838ee7b63f469c63d8d8215fbc7eaa745efdc0fccff68abc7e6748092fef09"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011393.zip",
            checksum: "d257cd236584cb07aa0c49cb3751f5b056bd8dd638a0bfe1b02dd922cd25c1cc"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011378.zip",
            checksum: "9dd86bb3502a0d747db7da4ab506f50c8b72ecf4f97f13e408f6c9ca59996cb7"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011386.zip",
            checksum: "217ccace92cf708cfdf59b0134482ad057b17918d766b98deed352cdfb7716c0"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011381.zip",
            checksum: "6a4ac0c3eb2838121d9ec7a5343b9763e88a1930093e3668268079ed65ade720"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/275011400.zip",
            checksum: "645ce7eb8206ac3fd08e9e22cb1016a5ebf7b38aea74ba3cb9115bafca99def1"
        ),
    ]
)