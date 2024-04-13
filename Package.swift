// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "ClairvoyantCBOR",
    platforms: [.macOS(.v12), .iOS(.v14), .watchOS(.v9)],
    products: [
        .library(
            name: "ClairvoyantCBOR",
            targets: ["ClairvoyantCBOR"]),
    ],
    dependencies: [
        .package(url: "https://github.com/christophhagen/CBORCoding", from: "1.0.0"),
        .package(url: "https://github.com/christophhagen/Clairvoyant", from: "0.7.0"),
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ClairvoyantCBOR",
            dependencies: ["CBORCoding", "Clairvoyant"]),
        .testTarget(
            name: "ClairvoyantCBORTests",
            dependencies: ["ClairvoyantCBOR", "CBORCoding"]),
    ]
)
