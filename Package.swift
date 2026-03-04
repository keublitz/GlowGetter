// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "GlowGetter",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GlowGetter",
            targets: ["GlowGetter"]),
        .library(
            name: "GlowGetterPrivate",
            targets: ["GlowGetterPrivate"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Aeastr/SwiftMacros.git", from: "0.3.1")
    ],
    targets: [
        .target(
            name: "GlowGetter"),
        .target(
            name: "GlowGetterPrivate",
            dependencies: [
                .product(name: "SwiftMacros", package: "SwiftMacros")
            ]),
    ]
)
