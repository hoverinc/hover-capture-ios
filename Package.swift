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
                "HoverSDKExperimental",
                "HVBaseSDK",
                "HVLog",
                "HVNetworking",
                "HVPersistence",
                "HVSession",
                "HVUtility",
                "ObjcExceptionBridging",
                "_HoverSDK",
                "_HVAVCamera",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_HVTheme",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "HoverSDKExperimental",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663697.zip",
            checksum: "cb43ea189a8eac19a4b1589c0e1f0cb739a509f11bf9ce0784dff57e37a162c7"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663682.zip",
            checksum: "a915abfb50bec2d97b90c41708f47d24ab8f0fbbcc0ae6dfe5ce628d52c39f09"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663686.zip",
            checksum: "6283254686b47d570005d854aaca8e68170ad70d284018b4a88c520ce06cd25f"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663688.zip",
            checksum: "b37b7ceba6c2eaa96d7fd572480209dfae017d7bd39c160768b9e33e23d86222"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663690.zip",
            checksum: "c09352e959119cff588e6310caa0d9b154f8fd82bba81c030bb3f94cf68f7cd7"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663692.zip",
            checksum: "e80b324343f4bd6cfd3705a84dc2a2e1eb13d68def77891df2e4e9d622a00382"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663696.zip",
            checksum: "4d8ae7db3875e3aefb56a7d71ba9e7948c532b2bd82114d0568c670f16130f0f"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663702.zip",
            checksum: "53456a9e8d00c7b27acdb0896de93f80ff2ddf66534bef162f6b8c97d36e2fb3"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663713.zip",
            checksum: "c9c60d55f28dba0eedc64c6d9b5d8d364107c80e5b445984727dca675943ec8b"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663704.zip",
            checksum: "0d7d406d597b926cf519936c8b4130751ff7738d4ee0b32213fdac6d23eaf8ef"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663708.zip",
            checksum: "757466fc909976ac6c0dec8d6fd2a162540dc1dcd14f8409259bf34f779b59c6"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663707.zip",
            checksum: "e6c1be2a775e8cf5c9b4b25bede2c8faa59f922d0fea04ba18f5a11278f505a9"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663710.zip",
            checksum: "593d14697a7fcb4ceeec244c303d6f0296d868d3a7d80312187c3e440b69f853"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/306663715.zip",
            checksum: "7f8d48e8481f919858d5398072d927d8baa0c440c72110848fd44dc2df954bac"
        ),
    ]
)