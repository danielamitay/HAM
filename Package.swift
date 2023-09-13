// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "HAM",
    platforms: [
      .iOS(.v13),
    ],
    products: [
        .library(
            name: "HAM",
            targets: ["HAM"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HAM",
            dependencies: []
        ),
        .testTarget(
            name: "HAMTests",
            dependencies: ["HAM"]
        ),
    ]
)
