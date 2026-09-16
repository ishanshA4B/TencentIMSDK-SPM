# TencentIMSDK-SPM — Usage Guide (8.0.5895)

SPM binary wrapper for Tencent IM SDK (`TXIMSDK_Plus_iOS_XCFramework` v8.0.5895).
This version matches the CocoaPods spec `pod 'TXIMSDK_Plus_iOS_XCFramework', '~> 8.0.0'` (resolves to `8.0.5895`).

---

## 1. Add Dependency (Package.swift)

```swift
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "YourApp",
    platforms: [.iOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/ishanshA4B/TencentIMSDK-SPM.git", from: "8.0.5895")
    ],
    targets: [
        .target(
            name: "YourApp",
            dependencies: ["ImSDK_Plus"]
        )
    ]
)
```

Or add via Xcode: **File → Add Packages → Enter URL:**
```
https://github.com/ishanshA4B/TencentIMSDK-SPM.git
```
Select version `8.0.5895`.

---

## 2. Import in Code

```swift
import ImSDK_Plus
```

---

## 3. Verify Binary Checksum

The `.xcframework` zip (10.4 MB) has SHA-256:
```
af4832bac9611f07638ab6912f8ad15a3c3f3e3522dcfb037fd770f29277f3a5
```
This matches the binary downloaded from Tencent's official URL:
```
https://im.sdk.qcloud.com/download/plus/8.0.5895/ImSDK_Plus_8.0.5895.xcframework.zip
```

---

## 4. CocoaPods Alignment

If using CocoaPods alongside this SPM package:

```ruby
# Podfile
pod 'TXIMSDK_Plus_iOS_XCFramework', '~> 8.0.0'
```

Check `Podfile.lock` confirms:
```
- TXIMSDK_Plus_iOS_XCFramework (8.0.5895)
```

Both CocoaPods and this SPM package now reference `8.0.5895` (same build).

---

## 5. Update the Release Asset

To publish the matching binary to your repo:

```bash
# 1. Copy the downloaded zip to release assets
cp ImSDK_Plus_8.0.5895.xcframework.zip \
   TencentIMSDK-SPM/release-assets/

# 2. Create/update GitHub release tag 8.0.5895
# Upload: ImSDK_Plus_8.0.5895.xcframework.zip
# Release notes: Tencent IM SDK 8.0.5895 — matches CocoaPods ~> 8.0.0

# 3. Verify Package.swift URL points to:
# https://github.com/ishanshA4B/TencentIMSDK-SPM/releases/download/8.0.5895/ImSDK_Plus_8.0.5895.xcframework.zip
```

---

## 6. Version Reference

| Source | Version | Binary Source |
|---|---|---|
| CocoaPods (`Podfile.lock`) | `8.0.5895` | `Pods/TXIMSDK_Plus_iOS_XCFramework/` |
| This SPM repo (`Package.swift`) | `8.0.5895` | `github.com/ishanshA4B/TencentIMSDK-SPM/releases/download/8.0.5895/` |
| Tencent official download | `8.0.5895` | `im.sdk.qcloud.com/download/plus/8.0.5895/` |
| Tencent upstream (current) | `8.9.7540` | `im.sdk.qcloud.com/download/plus/8.9.7540/` |

---

## Notes

- The binary in your repo (`checksum: 97b52a...`) and the Tencent download (`checksum: af4832...`) are different builds of `8.0.5895`. Use the checksum matching the zip you upload to releases.
- The `8.0.5895` tag already exists in your repo but the binary asset should be updated/replaced with the downloaded zip if you want exact CocoaPods parity.
- This package requires `.iOS(.v13)` minimum platform.
