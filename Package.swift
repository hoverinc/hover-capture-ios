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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777783.zip",
            checksum: "ba1ebdcfceb6a26d488d15c18099e99108438e1b9b6873128dfc69910001131b"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777784.zip",
            checksum: "e9b6ec85d7b832570943fa728190ddcad968315c1bddcd486093acc742c4fddf"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777790.zip",
            checksum: "af7d26bff256ccd6ba58109fc7b2441648a6f8217c142c9ff91be4e7c9420bab"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777792.zip",
            checksum: "dd82d0691ab076295191149879687422d046b95c3b3f6472591f566fc61b02ff"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777789.zip",
            checksum: "91bdbc37052d1718c13ae5961708c0fe92f28321c8c21e04e0672c5152293ad3"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/148777794.zip",
            checksum: "b0ca2128ad0a1d9b853ca5f53ff2bd0541328e5c14cf7104585744c711f71566"
        ),
    ]
)