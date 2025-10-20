// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = Version("1.0.3")
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
        .binaryTarget(name: "ZDLayoutKit", url: "https://maven.zohodl.com/ZohoDesk/ZDLayoutKit/\(version.description)/ZDLayoutKit.zip", checksum: "018cf230139e226ce9495937ee3224dae38bdc343ab0f8279c11082362a7575b"),
        
        .target(
            name: "ZDLayoutKitPackage",
            dependencies: [
                .product(name: "ZDAttachmentUploader", package: "ZDAttachmentUploader")
            ]
        )
    ]
)

