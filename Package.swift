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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311933.zip",
            checksum: "5fa8986aa63f860c681eefece027e919ccdf02e80f4da4a66e701a561cad4e73"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311994.zip",
            checksum: "c4ae23a5ebb048c40b346f41d5757ba24b50980f017b8a1ff27f35902ef4ef40"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311934.zip",
            checksum: "2355881d8b1b50a0cec6d7480f3a10db5994abaef5bca0a4c6a52bc56b586660"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311990.zip",
            checksum: "44152baf504ab9872a357f298ef3e38f0c482de19d11a0effcfcf9f11ca96093"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311987.zip",
            checksum: "838cfb39bbd2bdc66e5298e1dfa6b624fb7275ce1d7c5fc94bb717cf35efab1b"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/203311996.zip",
            checksum: "2b774d6d83aa1ee5205fd169a22d5fd6e5340b050e06c52227a503b3298e1a5f"
        ),
    ]
)