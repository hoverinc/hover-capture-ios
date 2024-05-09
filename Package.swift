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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014721.zip",
            checksum: "eb8bb6980d018146d92882cbbd4a2561541265f5efce8c40fee0f75b3f7d8da1"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014722.zip",
            checksum: "419e2e923d7b9c498319463d9682dc0bf02cb275d29e301264207a90b370d721"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014724.zip",
            checksum: "3815f1fb00228d877a5638639284f4ee8eb9553538d2fff1c4a53a9cd9498fd6"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014725.zip",
            checksum: "6a509aa4831211d280265a4d0f7070998882b018c7afb1b70bf9035961bee4f2"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014723.zip",
            checksum: "8dfed1e4ecaa0f94526db9181f0a691e3324c8292cd8c2344a06e8c1ef0441e0"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/167014726.zip",
            checksum: "3875ea76ee0c3005ee1a7fb2fff3fe97e9734d72bdce5d19db878541386c9c76"
        ),
    ]
)