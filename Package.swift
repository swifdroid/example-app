// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "App",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "Run", targets: ["Run", "App"]),
        .library(name: "App", type: .dynamic, targets: ["App"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swifdroid/droidy", from: "0.0.1"),
        .package(url: "https://github.com/swifdroid/droid", from: "0.0.1"),
    ],
    targets: [
        .executableTarget(name: "Run", dependencies: [
            .product(name: "Droidy", package: "droidy")
        ]),
        .target(name: "App", dependencies: [
            .product(name: "Droid", package: "droid"),
            .product(name: "DroidX", package: "droid")
        ]),
        .testTarget(name: "AppTests", dependencies: ["App"]),
    ]
)
