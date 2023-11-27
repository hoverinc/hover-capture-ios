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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677649.zip",
            checksum: "92f502b14f55dd51d1d8aed42af9f55400c4558d5b5e280c389ef1cfc65e08d6"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677650.zip",
            checksum: "3afb05f67f458a657edebc4bb5c4539e7b7bab185436b2643b97126076c77481"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677653.zip",
            checksum: "a0c03535633284dc6b011ad9cce35fdf6ba40c893e03badb887d067c7f3a9a01"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677671.zip",
            checksum: "1768e5401852632b31ab530b5478b3bf8953494dffd9b239acf061fb810d1611"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677652.zip",
            checksum: "b1a7f4e0568c7c65dda41ab81bee17a0056c7af7107ea76cd86a8d126026f542"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137677676.zip",
            checksum: "e4aeca1543989d4b5412831c21adcd5b01ad6e577d900faec71d20e1ad7367b5"
        ),
    ]
)