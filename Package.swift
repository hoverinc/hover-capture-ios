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
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675786.zip",
			checksum: "706f0dc3f3cf06bb43315391ddd108a80d4f539ec51725b7b2184a588bd9a591"
		),
		.binaryTarget(
			name: "_HVAVCamera",
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675788.zip",
			checksum: "5b90853c15d560ed7f2383b382aeb369aa62c9d0a5edf7285bc4108f05187fb5"
		),
		.binaryTarget(
			name: "_HVCameraExterior",
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675792.zip",
			checksum: "9d6011e47d297c3c6cc413e87d00030eebc7cc4d03c9a338b60d62b88928f492"
		),
		.binaryTarget(
			name: "_HVCore",
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675854.zip",
			checksum: "ad6fdcc99d2a5553f1f6b682d3378f73be00a7bda172948f5df22fe01a52a1e5"
		),
		.binaryTarget(
			name: "_HVCVPixelBufferHelper",
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675790.zip",
			checksum: "096aaca9c90f02c3b6e7d1389d89d0306294cb813f8bed1e2bf07a3ff88bf9a8"
		),
		.binaryTarget(
			name: "_XCGLogger",
			url: "https://api.github.com/repos/hoverinc/hover-capture-ios/releases/assets/137675855.zip",
			checksum: "ec941e4ddd4e89514a0fd38f7c8d34f79d7898d4d0b4ca13058c732e62507449"
		),
	]
)