// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DartThirdPartyLibraries",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DartThirdPartyLibraries",
            type: .static,
            targets: ["DartThirdPartyLibraries"]),
    ],
    dependencies: [
      .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.10.0")),
      .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "4.0.0")),
      .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
      .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", from: "5.0.0"),
      .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
      .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "8.0.0")),
      .package(url: "https://github.com/devicekit/DeviceKit.git", .upToNextMajor(from: "4.0.0")),
      .package(url: "https://github.com/googlemaps/google-maps-ios-utils", .upToNextMajor(from: "6.0.0")),
      .package(url: "https://github.com/googlemaps/ios-maps-sdk", .upToNextMajor(from: "9.0.0")),
      .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DartThirdPartyLibraries",
            dependencies: [
              "Alamofire",
              "SwiftyJSON",
              .product(name: "RxSwift", package: "RxSwift"),
              .product(name: "RxCocoa", package: "RxSwift"),
              "RxDataSources",
              "SnapKit",
              "Kingfisher",
              "DeviceKit",
              .product(name: "GoogleMaps", package: "ios-maps-sdk"),
              "CryptoSwift"
            ]
        ),
        .testTarget(
            name: "DartThirdPartyLibrariesTests",
            dependencies: ["DartThirdPartyLibraries"]
        )
    ]
)
