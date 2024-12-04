// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Utils",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "KeyboardReadable",
            targets: ["KeyboardReadable"]
        ),
        .library(
            name: "SceneDelegateReadable",
            targets: ["SceneDelegateReadable"]
        ),
        .library(
            name: "AppDelegateReadable",
            targets: ["AppDelegateReadable"]
        ),
    ],
    targets: [
        .target(
            name: "KeyboardReadable"
        ),
        .target(
            name: "SceneDelegateReadable"
        ),
        .target(
            name: "AppDelegateReadable"
        ),
        
    ]
)
