// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("1.1.0")
let package = Package(
    name: "ZDLayoutKit",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZDLayoutKit",
            targets: ["ZDLayoutKit", "ZDLayoutKitPackage"])
    ],
    dependencies: [
        .package(url: "https://github.com/zoho/ZDAttachmentUploader.git", exact: version)
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ZDLayoutKit", url: "https://maven.zohodl.com/ZohoDesk/ZDLayoutKit/\(version.description)/ZDLayoutKit.zip", checksum: "1970583b624961004150c549a007c1b856fc9cd16dea866ec1c5744b1b5885ef"),
        
        .target(
            name: "ZDLayoutKitPackage",
            dependencies: [
                .product(name: "ZDAttachmentUploader", package: "ZDAttachmentUploader")
            ]
        )
    ]
)

