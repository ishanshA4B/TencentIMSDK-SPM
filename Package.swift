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
            checksum: "af4832bac9611f07638ab6912f8ad15a3c3f3e3522dcfb037fd770f29277f3a5"
        )
    ]
)
