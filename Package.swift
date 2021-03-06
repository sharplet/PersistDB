// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "PersistDB",
    products: [
        .library(
            name: "PersistDB",
            targets: ["PersistDB"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/PersistX/Schemata.git", from: "0.0.2"),
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "3.1.0"),
        .package(url: "https://github.com/tonyarnold/Differ.git", from: "1.0.3"),
    ],
    targets: [
        .target(
            name: "PersistDB",
            dependencies: [
                "Differ",
                "ReactiveSwift",
                "Schemata",
            ],
            path: "Source"
        ),
        .testTarget(
            name: "PersistDBTests",
            dependencies: ["PersistDB"],
            path: "Tests"
        ),
    ]
)
