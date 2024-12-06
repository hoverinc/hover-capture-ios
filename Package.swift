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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114078.zip",
            checksum: "a0b4d874f3552b4d956e3cf317246ca819b19fc182cfc3c69cc5b3a0552aed26"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114089.zip",
            checksum: "92e20a80fff4e804b7de504d33d5f8ab82151cc09ebebff6e3b119cef8c8c5fc"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114083.zip",
            checksum: "1719b5d83334946c1b9014b3248a6cab6a003a7a27667257dedb281181d6d189"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114085.zip",
            checksum: "39622b20cdc009204fb6f6ab08f5e7851e27df321a4412e00c2598c720488f81"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114084.zip",
            checksum: "6dadefab1a5785cb6834c07de10d4bb2f1796d3f91d877b4ba85b543e16f384a"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/211114092.zip",
            checksum: "6394cefd4625c3f249395faf9a8c9d1140e106c2c743580478f50debd044eb27"
        ),
    ]
)