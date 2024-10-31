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
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027224.zip",
            checksum: "f69fcc63a34a91748b26a8daeefaca8c7d1fe1ae67071bd16fcdbd85a0db1272"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027254.zip",
            checksum: "35ab8a2c1928715c03d8dcd7094bc276b37efe7549936182553a34af199dbcec"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027232.zip",
            checksum: "00e6e2ccb9dbf068377c300f1123b37c1953a21ec64a59244c9b0955facc19eb"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027248.zip",
            checksum: "55a492d44b202c49c415cb1c367c04e17dd090c5921e04f8ffe14c02a884c11d"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027238.zip",
            checksum: "e527e8d59d4ad0343217e6834c73fe0ee05d9c17e0b0b573f1b2427e5432dad5"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203027264.zip",
            checksum: "d47503e3fe3d7ce06ae5f74a64ca8acee3ca9143b2e2c9d2516f9843da686f4b"
        ),
    ]
)