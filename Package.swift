// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Hodler",
    platforms: [
        .iOS(.v13),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "Hodler",
            targets: ["Hodler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/BoRoZzz/BitcoinCore.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/BoRoZzz/HsCryptoKit.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "Hodler",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit"),
            ]
        ),
    ]
)
