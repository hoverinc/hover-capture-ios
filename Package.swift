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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274924.zip",
            checksum: "2ce1da8759822aeb3093f985f4afb9c1b0987293a1a23cae06350477b238b263"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274925.zip",
            checksum: "0dfefbd185c5ac4395139ff9d94dcaab5ff182864bcbfccbe9c0676e4367e454"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274931.zip",
            checksum: "3254c0d477a4f533b8435482fc43e002cc830b209baed92fe59b72841791fcc0"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274934.zip",
            checksum: "b3d89b893966e4a3084bcee255667ff60204822772dd12248fa5fb1b5b85e12f"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274928.zip",
            checksum: "04e7a27513c23b1d58f291f509b3aef2f7eaebff1fd2eedd7f9da4e11a08166c"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/155274935.zip",
            checksum: "ac4e56d1bd15a1d6cbf58b78a4c2ac1ef50bf558733549311fcca4dc678cce2d"
        ),
    ]
)