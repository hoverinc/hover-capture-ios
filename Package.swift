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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881910.zip",
            checksum: "3ea6db856a16ad0c9ed07fb317972cbe60a734bda04a6ed08f230b335801a292"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881912.zip",
            checksum: "255dad91d994e6378b15c89c9be0ed50c3ded14012c6e9bb267104407d56f038"
        ),
        .binaryTarget(
            name: "_HVCameraExterior",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881918.zip",
            checksum: "ab95a26c936b94281c9dbeca1563e517dd9bdfe4e8f147fff3a82440accf18a0"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881921.zip",
            checksum: "6bf6d00ab5cc10dc5cc7d624f9e0a2d83d357a0c37a255a9f3a74a26f2047624"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881915.zip",
            checksum: "2e1733fb2a2fa1f19b52640c6b879970dc0851f3789fb33baa05ae0b8110d938"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/147881923.zip",
            checksum: "de60603daf0f6223325c1624460fdcdc079b0b9f60d71a96802ba69191f3b402"
        ),
    ]
)