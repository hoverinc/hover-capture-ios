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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107368.zip",
            checksum: "1657579daabf6db1caf41c3ce971b4a6da7cbcdcd07cc60cafc1767a846386bc"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107369.zip",
            checksum: "67ee62f18f6dae08a8ef8610a9f8959e2ab846644051cc9dd8f0d8d1199c05fd"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107371.zip",
            checksum: "5769bee741a59a107be777c9625625cee9da9ce228aa711fcaed672f74249209"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107386.zip",
            checksum: "29580da78e2cd85750806f78e429ec1f3598a3518f87ae973e6a8084ac56cda4"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107370.zip",
            checksum: "068af975bb87351bb2a004b76eb2046ff5aa4f1506fb210a05fdda750d7635d1"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/138107391.zip",
            checksum: "7fe218864530fbf085f7947535d3d0b8dfe005e0eaa524c9f8a62ebbc851816d"
        ),
    ]
)