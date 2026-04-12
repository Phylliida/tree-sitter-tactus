//  swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterTactus",
    products: [
        .library(name: "TreeSitterTactus", targets: ["TreeSitterTactus"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.9.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterTactus",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterTactusTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterTactus",
            ],
            path: "bindings/swift/TreeSitterTactusTests"
        )
    ],
    cLanguageStandard: .c11
)
