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
                "ObjcExceptionBridging",
                "_HVAVCamera",
                "_HVCameraExterior",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_XCGLogger",
            ]
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108885.zip",
            checksum: "580ce64d842b84c7bcb3f8a27a279877632715c105525198b5d62dff5aabdf49"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108889.zip",
            checksum: "c661a2335a78994183e34e34d3b9dc27f0bd7d4e2eca50e299a2dc612d672d13"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108892.zip",
            checksum: "0a258bf99459c4a2cae6ad13e06d2b317883331fd7bff3da2351d93dfa242eb3"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108918.zip",
            checksum: "c87812c7613baeaf57555a06820a25d73cf8295274e17cb0be6d6c148babde64"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108890.zip",
            checksum: "31d14bfe3aab3c05911822e7d35d38ecb92ac4013e1ce6dc1dc5a40772fde9ff"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138108920.zip",
            checksum: "6193517b1a0e2346f4120bbf3f4132f01a637c67908a90ea5c77d221a396c492"
        ),
    ]
)