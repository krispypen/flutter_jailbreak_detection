// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "flutter_jailbreak_detection",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "flutter-jailbreak-detection", targets: ["flutter_jailbreak_detection"])
    ],
    dependencies: [
        .package(url: "https://github.com/securing/IOSSecuritySuite.git", .upToNextMinor(from: "2.2.0")),
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_jailbreak_detection",
            dependencies: [
                .product(name: "IOSSecuritySuite", package: "IOSSecuritySuite"),
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ]
        )
    ]
)
