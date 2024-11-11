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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762128.zip",
            checksum: "9291aff529fbfd935c37581f49cc8a2365b6aa144e1aa60dc4b9ecc42e217c3f"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762141.zip",
            checksum: "ec11f0b3aaed3991d8d9d4224d271fba16e3c0edb8edf99094d49c69b222c128"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762129.zip",
            checksum: "d463a2cfccc8ca1f6dd41def241aa834657d2e2730f104a00439d4e7004db683"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762139.zip",
            checksum: "65f8e171057a1376a07b9a3dd9a83aacff7842d14484c3f1ac0bb7f532ba7c3a"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762130.zip",
            checksum: "52450bd150674d69d90acdc375777b765262c86ff546d80672fda1bb78764b62"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/205762148.zip",
            checksum: "5c7560658e11b11708b11144b507deb219d33f4dd97703a8429318fa1fd45d01"
        ),
    ]
)