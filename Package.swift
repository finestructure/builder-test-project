// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "builder-test-project",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "builder-test-project",
            targets: ["builder-test-project"]),
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "builder-test-project"),
        .testTarget(
            name: "builder-test-projectTests",
            dependencies: ["builder-test-project"]),
    ]
)

if ProcessInfo.processInfo.environment["SPI_BUILDER"] == "1" {
    package.dependencies.append(.package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0"))
}
