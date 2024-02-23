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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090220.zip",
            checksum: "571511c993164789e5fcf4aa4ade99b39fedfb00ce94eb887b112af5c9585630"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090223.zip",
            checksum: "c1c692ee824ba542d70b2b6a56bdcb9a49b8866e92ba2455ed5802aae8147d38"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090230.zip",
            checksum: "e5f10b90278bb6d116520d8c1b5e0e276f45ce4b1bf934e0e33d663a73fe955e"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090233.zip",
            checksum: "cc5059d5a11bed2c3c9cf2191cf0d31421739f2e1c5810a03a2f9c7683ff797b"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090227.zip",
            checksum: "7ce5e15081506cbe95a7476bd8f425200894ecc96c652aa6b1e69a1bfd5e66db"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/153090235.zip",
            checksum: "6219bbe48a6c91b762cbe4404350a0e4b4f37f9f5a7b8e7612fcffbd28998ec3"
        ),
    ]
)