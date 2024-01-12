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
                "_HVAVCamera",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_HVCameraExterior",
                "ObjcExceptionBridging",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908519.zip",
            checksum: "4d62fc18fef099093f21720715b32091858636538a481ad9dd64dc7fcbdc66b5"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908464.zip",
            checksum: "7974838619a79b0a4c9169a7b3b10bbf70605f2148f92b9e410e9efbd5f87776"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908466.zip",
            checksum: "f6184e2e56e066380c2d9cecc76edf6a02cee22c4719e68247a7aed83f6b9e75"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908516.zip",
            checksum: "f0ff7917bf6fceeed06072e13d6fbd9961263b24f594dfc4d2041f907b9cc884"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908517.zip",
            checksum: "fc13cc77109e5e4ac53e46ad3c0c7960561d317b4af1ab0f225394d75cb8b2d1"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/135908518.zip",
            checksum: "0508015a2ab47e8d5986bcd27b75ac2ad9acebdad3295bce30b0335925c6a5ed"
        ),
    ]
)
