// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "github_search_repository",
    targets: [
        .target(
            name: "GitHubSearch"),
        .testTarget(
            name: "GitHubSearchTests",
            dependencies: ["GitHubSearch"]),
        .target(
            name: "github_search_repository",
                dependencies: ["GitHubSearch"]),
    ]
)
