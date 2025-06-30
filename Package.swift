// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Koloda",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "Koloda", targets: ["Koloda"])
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/pop.git", from: "1.0.12")
    ],
    targets: [
        .target(
            name: "Koloda",
            dependencies: ["pop"],
            path: "Pod/Classes",
            sources: ["KolodaView"]
        )
    ]
)