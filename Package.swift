// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PEPhotoCropEditor",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "PEPhotoCropEditor",
            targets: ["PEPhotoCropEditor"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "PEPhotoCropEditor", 
            path: ".",
            exclude: [
                "DemoApp", 
                "en.lproj",
                "ja.lproj", 
                "Movies",
                "Screenshots",
                "LICENSE",
                "PEPhotoCropEditor.podspec",
                "PEPhotoCropEditor.xcodeproj",
                "Rakefile",
                "README.md",
                ],
            resources: [.copy("Resources/PEPhotoCropEditor.bundle")],
            publicHeadersPath: "Lib"),
    ]
)
