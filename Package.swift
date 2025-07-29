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
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535543.zip",
            checksum: "796435dc2d2837671ed1eb170abd665ce036fc3d03a1f0cb36f613f3d8781c8e"
        ),
        .binaryTarget(
            name: "HVBaseSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535522.zip",
            checksum: "6d8b618617cb5ecd315d923d5e7499990d910659fee5578084ac7646638ebd3b"
        ),
        .binaryTarget(
            name: "HVLog",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535523.zip",
            checksum: "24c871e92592d1eaed96dd214444c7fcc503bf8c2334dca2729f3c569bb04ef8"
        ),
        .binaryTarget(
            name: "HVNetworking",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535525.zip",
            checksum: "4da45d7c1d09cb1ef571a679b541f7fad31c6399bbd296c2d191bc96198faa50"
        ),
        .binaryTarget(
            name: "HVPersistence",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535530.zip",
            checksum: "5b5ad99c6be0144cff3068ef3e52f43d977921a3833a407dcf278d1756bc7671"
        ),
        .binaryTarget(
            name: "HVSession",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535534.zip",
            checksum: "8b3f8db6dd088083b00b5a4187e0bad9a60a57382ffb143903b76d692f975ab6"
        ),
        .binaryTarget(
            name: "HVTheme",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535536.zip",
            checksum: "c25159fdb48f8a4dac40804f39e42209f6d336b2b4c7ffb65ab620fd44dead82"
        ),
        .binaryTarget(
            name: "HVUtility",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535540.zip",
            checksum: "d42693455fc092cd4369f3e8ea0f987e96f03e93a87ea12516792cbce5e41671"
        ),
        .binaryTarget(
            name: "ObjcExceptionBridging",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535547.zip",
            checksum: "6c5162dcb592805231e1af999f7ead22a8065bf35806d742605e9672dc00dc9c"
        ),
        .binaryTarget(
            name: "_HoverSDK",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535581.zip",
            checksum: "c4f3310eb0d17d5b205ad145ac2ef03c55886967166198d171125b7dfcf8dad3"
        ),
        .binaryTarget(
            name: "_HVAVCamera",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535568.zip",
            checksum: "da8225912138d8b4c7c227b9c6130e1ff85f33f5bd896c635586471148076c03"
        ),
        .binaryTarget(
            name: "_HVCore",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535577.zip",
            checksum: "23e238bb4233a7ab02b16ecb11a55bbe2d7e68288b1d3d456168d5e3d49dcaf1"
        ),
        .binaryTarget(
            name: "_HVCVPixelBufferHelper",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535570.zip",
            checksum: "787840bfa07a4dace6c83bcb4c3d86d05f1d949b91e44764a896604b5b732318"
        ),
        .binaryTarget(
            name: "_XCGLogger",
            url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/277535586.zip",
            checksum: "0bbb86d1c008318366acd4b153abfbc67f165c28c726a17d3caf051afe403ed5"
        ),
    ]
)