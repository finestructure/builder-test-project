// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "builder-test-project",
    products: [
        .library(name: "builder-test-project", targets: ["target-1", "target-2"]),
    ],
    targets: [
        .target(name: "target-1"),
        .target(name: "target-2"),
        .testTarget(name: "test-target", dependencies: ["target-1", "target-2"]),
    ]
)
