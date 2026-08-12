// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TencentIMSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ImSDK_Plus", targets: ["ImSDK_Plus"])
    ],
    targets: [
        .binaryTarget(
            name: "ImSDK_Plus",
            url: "https://github.com/ishanshA4B/TencentIMSDK-SPM/releases/download/8.9.7540/ImSDK_Plus_8.9.7540.xcframework.zip",
            checksum: "e046cf1725a8522b982e3d3a31a0a0e2c7fb5d55407830696a0d88a24f004553"
        )
    ]
)
