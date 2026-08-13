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
            url: "https://github.com/ishanshA4B/TencentIMSDK-SPM/releases/download/8.0.5895/ImSDK_Plus_8.0.5895.xcframework.zip",
            checksum: "97b52afd584dd6c2489a3a5f5e63cab288f50ed20ac69eaee00122f6b916d8d0"
        )
    ]
)
