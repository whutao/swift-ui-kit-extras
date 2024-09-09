// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "swift-ui-kit-extras",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "UIKitExtras", targets: ["UIKitExtras"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/whutao/swift-core-graphics-extras",
            from: Version(1, 0, 0)
        )
    ],
    targets: [
        .target(name: "UIKitExtras", dependencies: [
            .product(
                name: "CoreGraphicsExtras",
                package: "swift-core-graphics-extras"
            )
        ])
    ]
)
