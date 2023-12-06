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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139312999.zip",
            checksum: "9ed6ac1b0eaf39aa1fef2f6bbc87f4bfab9b7ee51f4eb2d42da83d00203736cd"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139313001.zip",
            checksum: "d01a9e1d4f60470225cd2d1a841bdbaf5d975667500e21793e52474aa7cc4bd9"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139313005.zip",
            checksum: "1b3e0de662ab87a0e9f3f7a0b44bc10887b5b45569cd4872451778f2beaa00c3"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139313021.zip",
            checksum: "efcb57dee75da1d56ef436b42e06214777713bb6215c6aad20f280a494de0469"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139313004.zip",
            checksum: "ac4c241a07cc34f5bd4a6593f51cc0a0118e8627df8fbabf4f3ef4109037b3aa"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139313025.zip",
            checksum: "45abb1ed3e984bc9e968872d41c06a9f7ad07df792a79ef90bf876e5914ee47f"
        ),
    ]
)