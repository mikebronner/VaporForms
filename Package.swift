// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporForms",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "VaporForms",
            targets: ["VaporForms"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.4"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0-rc.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "VaporForms",
            dependencies: ["Vapor", "Leaf"]),
        .testTarget(
            name: "VaporFormsTests",
            dependencies: ["VaporForms"]),
    ]
)
