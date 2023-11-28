// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "Confetti",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "Confetti",
      targets: ["Confetti"]),
  ],
  targets: [
    .target(
      name: "Confetti"),
    .testTarget(
      name: "ConfettiTests",
      dependencies: ["Confetti"]),
  ]
)
