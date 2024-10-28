// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CloudPayments",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "CloudPayments",
            targets: ["CloudPayments"]
        ),
    ],
    dependencies: [
        .package(
            name: "CloudpaymentsNetworking",
            url: "git@github.com:intaro/CloudPaymentNetworking.git",
            from: "1.0.2")
    ],
    
    targets: [
        .target(
            name: "CloudPayments",
            dependencies: ["CloudpaymentsNetworking"],
            path: "sdk",
            resources: [.process("../Resources"), .process("PaymentForm.storyboard")]),
    ]
)
