// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "TestLibrary",
    products: [
        .library(
            name: "TestLibrary",
            targets: ["TestLibrarySwift", "TestLibraryCxx"]
        )
    ],
    targets: [
        .target(
            name: "TestLibrarySwift",
            dependencies: ["TestLibraryCxx"],
            swiftSettings: [.interoperabilityMode(.Cxx)]
        ),
        .target(
            name: "TestLibraryCxx"
        )
    ]
)
