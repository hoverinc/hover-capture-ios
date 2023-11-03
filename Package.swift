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
        .target(
            name: "HVCaptureSDK",
            dependencies: [
                "HVAVCamera",
                "Core",
                "CVPixelBufferHelper",
                "HVCameraExt",
                "HVEDLines",
                "ObjcExceptionBridging",
                "XCGloggerModule",
            ]
        ),
        .binaryTarget(
            name: "HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801295.zip",
            checksum: "8ab19e6dbf9bf07e30cac2a4154f080d9d1360d3a5af8816660e86984aab55c7"
        ),
        .binaryTarget(
            name: "Core",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801286.zip",
            checksum: "e82033dd914c917e785c769873f24b9a0110723a01c6c02c13fa5ebc308119df"
        ),
        .binaryTarget(
            name: "CVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801292.zip",
            checksum: "c9b6118982cc65c832be8141546634b29a3108a3ce700a5015250570906c7cca"
        ),
        .binaryTarget(
            name: "HVCameraExt",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801297.zip",
            checksum: "c6587a09034c5df18b3a109a09100ca6da51eed68d31f1565fbcbe25fbe4f592"
        ),
        .binaryTarget(
            name: "HVEDLines",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801323.zip",
            checksum: "d15570302a85ba8c0cd35853be70d4b825ec605d8f895cfb2ca85c951b0c6351"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801324.zip",
            checksum: "b28bd3edac448af8ba5cb1df485d16e6fac5f77a1a416daf6f0792801f0689ae"
        ),
        .binaryTarget(
            name: "XCGloggerModule",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/133801325.zip",
            checksum: "b50f762563f3318a5a0b9c78350a491d1214ae2f2c5e43f102b4651bc8d48ca9"
        ),
    ]
)
