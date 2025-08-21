// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZDLayoutKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZDLayoutKit",
            targets: ["ZDLayoutKit", "ZDLayoutKitPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZDAttachmentUploader.git", exact: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZDLayoutKit", url: "https://maven.zohodl.com/ZohoDesk/ZDLayoutKit/1.0.0/ZDLayoutKit.zip", checksum: "c5e54e7a22316f6fa5db6dfcbf431d12af00b8034f80e12561e6adf3d95bd282"),
        
        .target(
            name: "ZDLayoutKitPackage",
            dependencies: [
                .product(name: "ZDAttachmentUploader", package: "ZDAttachmentUploader")
            ]
        )
    ]
)

