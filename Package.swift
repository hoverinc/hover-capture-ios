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
                "HVUtility",
                "ObjcExceptionBridging",
                "_HoverSDK",
                "_HVAVCamera",
                "_HVCore",
                "_HVCVPixelBufferHelper",
                "_HVTheme",
                "_XCGLogger",
            ],
            path: "Sources/HVCaptureSDK"
        ),
        
        // -- Internal -- //
        
        .binaryTarget(
            name: "HoverSDKExperimental",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774659.zip",
            checksum: "8c60c3b04bff7c1d3e0f66a077d6a9933cf48c03fcac3671e7fdc00f1e095aa5"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774430.zip",
            checksum: "f1f24c2e2a86a822f635760c865a1984bbcf154dbefb85d135f7b10b886326ed"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774460.zip",
            checksum: "0ea604d2830a0795f97c62a2c770872933d18f6508ff5efdb4dc1fceaaf86f53"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774498.zip",
            checksum: "e85b90cba96c084c3bb578358f11e4b2b374bc252f41d748bf3acacf8caf00c7"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774535.zip",
            checksum: "2af5d3908773206e58a38d4e22ee3dc1f511a64ad96c9992cc9c0b444651e8cc"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774568.zip",
            checksum: "33adb3fa889de6b962d896ffab698000dd687345555ab1fdd8f7c9e811b9d1e9"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774621.zip",
            checksum: "ddca4c5dc8f81f7371002d9e434769c67d4c20d23093a00acfb66eae291c07eb"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774693.zip",
            checksum: "28f0f40d4f43a135d860582eb03d22bcd3702136a65db96a5624aa98a8299d57"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774974.zip",
            checksum: "6262dd5e6a9df692cff488eace89982ddcb2e24494773d79612e17baab11d3c7"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774724.zip",
            checksum: "4bf61ff7df58833cffeb3c8eda13ab2378c15f0c8aef96ccc4213b470f7f5191"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774836.zip",
            checksum: "2e9a04b5213584d1c752ac05a20ae565a4c7f260726a4012da53ddd09c9532ff"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774756.zip",
            checksum: "2be7588038e791fbcbc38905dd09290eedb1f240cfa571e78fdf3d44f4271ceb"
        ),
        .binaryTarget(
            name: "_HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756774910.zip",
            checksum: "4b9255e76cf3d5386245c1ed0b308bfe4e162247dad6ff180bdb4ee66cc1d3c8"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/756775011.zip",
            checksum: "38a797970f60be59cf8fe16b43a526011e1598535b51003bf21b1bde9e0f71ad"
        ),
    ]
)