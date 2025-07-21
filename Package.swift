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
                "HVTheme",
                "HVUtility",
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
            name: "HoverSDKExperimental",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993971.zip",
            checksum: "afedd908e7fa0a19d08c95f2c57267cf68243285ad2f28390ef3a9949fd040b4"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993939.zip",
            checksum: "1ecbdaa57dacb4cff486129ed9ba82ea6441cb63ae2ada5a313aa16db681f7fa"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993942.zip",
            checksum: "f91e1a4bd676d1731a50b95c2d1043ad4417700bbde8828846adcb3a23972e93"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993944.zip",
            checksum: "6a29333314cec8121c34bbebea7cee8b0e804348bf7cc75af256b0dda1c7251b"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993948.zip",
            checksum: "1e76b7c8dadca6eb65a6fb9e9ae2f9eba1e5763a3f5fc0cb9cb89b44c11f19e4"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993951.zip",
            checksum: "24ca2e691a625a14d9cf8962f17041cdb03c0df2488507c79c947ae22ede8921"
        ),
        .binaryTarget(
            name: "HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993956.zip",
            checksum: "8d60100e07e6065cef42b4852967a4879d2b7e762d98c019508431c01594871b"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993970.zip",
            checksum: "011b660945b4b0a9aa3dc9920e43c2ffec699ff06d9b2934c57a780470bc3835"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993974.zip",
            checksum: "760b27bd2617c2dc2ee469b6d92287e2b5bf89492aa2116222d8c94a8c57ab6b"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993983.zip",
            checksum: "83a55559ea57f74bb74bb2b387b9340a910335c77b8ef426c9485b871b13c374"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993976.zip",
            checksum: "5651664659baaa443ce2cdbd71f287c5dfb230519700b03104e239f1c87b02a5"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993982.zip",
            checksum: "e7c38087ede462bd66ef0de2b6f7c71653dd089808d66e6360061f812088a4a9"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993978.zip",
            checksum: "010a7d21624d71001650fbb5a49321b025828b4f5434ddaa0cec86e1504b6228"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/274993986.zip",
            checksum: "537bb8cb7a92455966d15fdafc38fc45e01f939613a204170df6c412abe1c431"
        ),
    ]
)