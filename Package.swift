// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PrepSettingsUI",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PrepSettingsUI",
            targets: ["PrepSettingsUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pxlshpr/PrepShared", from: "0.0.143"),
        .package(url: "https://github.com/pxlshpr/PrepSettings", from: "0.0.3"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PrepSettingsUI",
            dependencies: [
                .product(name: "PrepShared", package: "PrepShared"),
                .product(name: "PrepSettings", package: "PrepSettings"),
            ]
        ),
        .testTarget(
            name: "PrepSettingsUITests",
            dependencies: ["PrepSettingsUI"]),
    ]
)
