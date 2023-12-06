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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351617.zip",
            checksum: "130b56d597ef73c387cebdbe3e8c998f3f5cef655fa64a815695493bd114a722"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351618.zip",
            checksum: "7943cf78dddcadd8610c57527d85ec7e25516785655570b0494708d7ada27a3d"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351622.zip",
            checksum: "a8790fc3f3fac414fe1df27873ac377152e81972357f04173977a339b06462c6"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351640.zip",
            checksum: "8767f515e7be773ced91832fa92ddd74335bf5391f6887d3b52862ea441303d4"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351619.zip",
            checksum: "926897c5e3215add6ed100e3c2f8a9018be1692f8dcb6d0e63ad2e034f222e6c"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/139351641.zip",
            checksum: "bc2dc248708bf19caf711283929bb4e7f1bb77ab4fb711866001d0bc67db0063"
        ),
    ]
)