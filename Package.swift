// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GCDWebServer",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "GCDWebServer",
            targets: ["GCDWebServer"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "GCDWebServer",
            dependencies: [],
            path: ".",
            exclude: [
                "Frameworks",
                "iOS",
                "Mac",
                "Tests",
                "tvOS",
                "Package.swift",
                "GCDWebServer-SBTUITestTunnel.podspec",
                "Run-Tests.sh",
                "format-source.sh",
                "README.md",
                "LICENSE"
            ],
            resources: [
                .copy("GCDWebUploader/GCDWebUploader.bundle"),
            ],
            cSettings: [
                .define("SWIFT_PACKAGE"),
                .headerSearchPath("GCDWebServer/Core"),
                .headerSearchPath("GCDWebServer/Requests"),
                .headerSearchPath("GCDWebServer/Responses"),
            ]),
    ]
)