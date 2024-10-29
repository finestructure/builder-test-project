// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "builder-test-project",
    products: [
        .library(
            name: "builder-test-project",
            targets: ["builder-test-project"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftPackageIndex/SemanticVersion", from: "0.0.0"),
    ],
    targets: [
        .target(name: "builder-test-project"),
        .testTarget(name: "builder-test-projectTests",
                    dependencies: ["builder-test-project"]),
    ]
)
