// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Selphi-IAD-SPM",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Selphi-IAD-SPM",
            targets: ["Selphi-IAD-SPM", "FPhiWidgetCore", "FPhiWidgetSelphi"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/facephi-clienters/FPHISelphiResources-SPM.git", .exactItem("6.4.0")),
        .package(url: "https://github.com/facephi-clienters/FPBTokenizer-SPM.git", .exactItem("4.0.4")),
        .package(url: "https://github.com/facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMinor(from: "0.5.7")),
        .package(url: "https://github.com/facephi-clienters/FPHIIADFrameworks-SPM.git", .exactItem("2.5.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Selphi-IAD-SPM",
            dependencies: [
                "FPhiWidgetCore",
                "FPhiWidgetSelphi",
                .product(name: "FPHIIADFrameworks-SPM", package: "FPHIIADFrameworks-SPM"),
                .product(name: "FPHIRecognitionHelper-SPM", package: "FPHIRecognitionHelper-SPM"),
                .product(name: "FPBTokenizer-SPM", package: "FPBTokenizer-SPM"),
                .product(name: "FPHILicenseManager-SPM", package: "FPHILicenseManager-SPM")]),

                    
        .binaryTarget(name: "FPhiWidgetCore",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.4.0/FPhiWidgetCore.zip",
        checksum: "d8f6c98742c4981ef7ab3f1dd81684831e143d085a0b95a5e0096480ab782c89"),
        .binaryTarget(name: "FPhiWidgetSelphi",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.4.0/FPhiWidgetSelphi.zip",
        checksum: "bcb1c927d72bbffa220687cf87cf40f920a827aac8270d061a14d84bae08c723")
        
    ]
)