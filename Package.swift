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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472663.zip",
            checksum: "99fb0da3cc9a8d156a7726ef2501dc7bc62f9b11b30be29008b2a01432624ab6"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472664.zip",
            checksum: "27df1e5940c0d403dba6f56590505f3dd2a6b1860d44feec3a7a2c1d6fe627ff"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472671.zip",
            checksum: "58ae38eda2116fbe776d992a089b58c62e1fcf0cd0d584ec0db7ca6dd74ed075"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472686.zip",
            checksum: "d8fd8af6c50b46107e461208d490435768beee0eaf9fd9ac6c5ef7344f3757fa"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472668.zip",
            checksum: "30d333c63a65f5683109553439ac920b83e6eb5a90f2da366a0e710a498c0b0d"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/143472689.zip",
            checksum: "109c2a6caf9cefca2fef6a00e2d016c559de75ee5fd48bda7c64c83c0cdded81"
        ),
    ]
)