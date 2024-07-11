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
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081155.zip",
            checksum: "9a7b6d95fb1c5a2fcbe812dfec2dacdac564cc5eb035fed849994b7ae7798ebd"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081156.zip",
            checksum: "fcbcd6a0359bb95ce70ebd6ed151c7b9fef86bc115f68770d061c570d6ec26f9"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081164.zip",
            checksum: "391966af56f124238dd8aaab383f2ce286a3821ef264636cf37c9545c3d0c586"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081167.zip",
            checksum: "096e8fdb1a1ecf01c6fd0a2133a7bc5516043dc670bdc8a81af66e9e7a0855c3"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081161.zip",
            checksum: "59d089565ef612213ac325fd2ae7e0dad2a3a010be7613bba24a7a86ad435e7b"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/179081168.zip",
            checksum: "95110df7e425f8a770cf5b7192605917b1ed352dee0c5166ba3df7f3406f9d72"
        ),
    ]
)