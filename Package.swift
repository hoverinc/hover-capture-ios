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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538229.zip",
            checksum: "5fd8f9b46056f2e8b471d7f4e6926cebe89823e8a1d09975bc5dc343886cc40c"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538230.zip",
            checksum: "d54df6522fd40504414aecff58db9c3ae260ac703dffe0b17b54bdedce99e3de"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538232.zip",
            checksum: "620c0cccc41fb5a57f41a17de14b86457f888c1ec8a0894b060b557754cdd204"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538233.zip",
            checksum: "c0a1bcba7845c2b194cd604a5f7cf8c69edb3e5243af855204dafc378a8d3dc7"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538231.zip",
            checksum: "6f7afbbf5fe15cdcf2054e592ead59b113bb862158ea57fd4a0e5a1e76db0884"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/156538235.zip",
            checksum: "045b2c9ecbd45f701e66b48b3f916b01b65727b9199e1e369fdd729acf21b2bf"
        ),
    ]
)