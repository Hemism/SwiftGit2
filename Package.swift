// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SwiftGit2",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SwiftGit2",
            targets: ["SwiftGit2"]),
    ],
    dependencies: [
        .package(
            name: "Clibgit2",
            url: "https://github.com/yonihemi/Clibgit2",
            .branch("main")
        ),
    ],
    targets: [
        .target(
            name: "SwiftGit2",
            dependencies: ["Clibgit2"],
            path: "SwiftGit2"
        ),
        .testTarget(
            name: "SwiftGit2Tests",
            dependencies: ["SwiftGit2"],
            path: "SwiftGit2Tests"
        ),
    ]
)
