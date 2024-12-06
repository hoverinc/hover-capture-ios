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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658019.zip",
            checksum: "5ee4adbe31affbf20f4ebd37858c4dc00f8b062d5f805e35851046175d54f41c"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658026.zip",
            checksum: "50bd37027e88c9d5b86a4d5a6f22d0c9bd5ef5180447c536981a4e9300393399"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658020.zip",
            checksum: "6ebe627443861f31d27ff0f4f197c46045c704447efed4b3d57dc15859b44d04"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658023.zip",
            checksum: "7035f78a8c5e2847daed1a94c29dc97d719f2570d4ae52f27075dbadd5540b07"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658021.zip",
            checksum: "d1292978d57ee1825b1f4378d6c66aa18d50e05e6e63d1cf60baaec603f87748"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211658028.zip",
            checksum: "55a4349d05a61ba7023274ee4ec205bb30cea0f73fa2cae55003fa0605993661"
        ),
    ]
)