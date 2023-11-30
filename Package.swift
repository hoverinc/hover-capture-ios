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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301854.zip",
            checksum: "c5594654f4512bddc8b0cd62cfc78d641e9c6381b3ea6b4119e8f1465c8235f9"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301856.zip",
            checksum: "3cc511f9afc73aa717558ae1bdef4a47c391d42030fa3926c3b37dd40a9c0e03"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301861.zip",
            checksum: "9968ec01b8cd386a2d4a61837c249781fbc5f25a1a498a67c6b0aee273fdaa7c"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301883.zip",
            checksum: "d01842b1e7d30c944be0bd9e798ed44ecda3d241cfcaf8507ad2b0e9446971b8"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301858.zip",
            checksum: "adaa767ac1cf05d06d7d114bb97075d3e4cf413fcbb68cea37d55630234d5565"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138301888.zip",
            checksum: "c7fff998214f794f152271a6391d686c99a166ff1786d382fd35902c9c5d6d3c"
        ),
    ]
)