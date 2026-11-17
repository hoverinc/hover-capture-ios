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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155230.zip",
            checksum: "508bdfbb56ca780237c5bcc859cb3eaaaec612744234e1a9087859d500109d06"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757154926.zip",
            checksum: "916decdf721ba06c78aaeaa2241928758c2e4d09d350b2439df0b12e5b9fb4af"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757154958.zip",
            checksum: "b3ddb9af0703759257c827d368359bf71d5869d806a748bfd5a9fe4e4afa33d5"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155013.zip",
            checksum: "f4e244715aa491e1b9e36cb53b84608938f1fc3e66366048fcc7c758c73c69ce"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155070.zip",
            checksum: "12ac78cd20eb310a7270b1c303058e4d7d0052b1f07a5bc110c19c9769036317"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155137.zip",
            checksum: "c0d1ac62283e43ebaa6f780d0557de7ba82bfa152e09f48201dde661348dc4b9"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155194.zip",
            checksum: "036c9618e64fbcbc2a71053129aa60e32d3d86da0bc4170f9c677409a5c128df"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155274.zip",
            checksum: "6fd104a35b4e147d5f8c306e0812b92012a551ee29b7d0d35e12f428e6a1a1de"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155583.zip",
            checksum: "9f9c7f767ffb71a4bbfb0cd56e9a45d6c34d02ec7974d018c0c23c55ce024a31"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155302.zip",
            checksum: "5919df2baafcfdffc338eb584f5216b4016a770f2a66cf94ef3f9185f984b4bf"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155420.zip",
            checksum: "fc2cd323d904e1747200ab558b10d4baa7332c2397ee1e1877a13f45b53b6d2e"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155361.zip",
            checksum: "7911eb4c20b269ca98b6beeb083a896d6a7ab68c4285a45b3e92b2c474e9b05b"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155538.zip",
            checksum: "17a30e32592a051af738a466d560f739a59c413e12758cc603ebc34e599fe202"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/757155671.zip",
            checksum: "23524203d8d1b15c5047481d155307ce3cd4eacb8680e493c39b88120ea82561"
        ),
    ]
)