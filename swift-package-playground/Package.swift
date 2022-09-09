// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SourceryPluginSample",
    platforms: [.macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SourceryPluginSample",
            targets: ["SourceryPluginSample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pol-piella/Sourcery.git", branch: "master")
    ],
    targets: [
        .target(
            name: "SourceryPluginSample",
            dependencies: [],
            exclude: ["SourceryTemplates"]
        ),
    ]
)
