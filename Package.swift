// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CBPinEntryView",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "CBPinEntryView", targets: ["CBPinEntryView"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/jdg/MBProgressHUD.git", from: "1.2.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "7.0.2")
    ],
    targets: [
        .target(
            name: "CBPinEntryView",
            dependencies: [
                .product(
                    name: "IQKeyboardManagerSwift",
                    package: "IQKeyboardManager"
                ),
                "MBProgressHUD"
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
