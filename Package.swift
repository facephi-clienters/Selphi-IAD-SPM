// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Selphi-IAD-SPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Selphi-IAD-SPM",
            targets: ["Selphi-IAD-SPM", "FPhiWidgetCore", "FPhiWidgetSelphi"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "3.27.2")),
        .package(url: "https://github.com/facephi-clienters/FPHISelphiResources-SPM.git", .exactItem("6.2.3")),
        .package(url: "https://github.com/facephi-clienters/FPBTokenizer-SPM.git", .exactItem("4.0.4")),
        .package(url: "https://github.com/facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMajor(from: "0.5.7")),
        .package(url: "https://github.com/facephi-clienters/FPHIIADFrameworks-SPM.git", .upToNextMajor(from: "2.5.1"))
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
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.2.3/FPhiWidgetCore.zip",
        checksum: "6a650e27710736a7c49cc5e8833a7c577a0421fe9a588762dea97575df8c23b6"),
        .binaryTarget(name: "FPhiWidgetSelphi",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.2.3/FPhiWidgetSelphi.zip",
        checksum: "b1e49fdcc9d84d444319faeae049fab3692c0b110817c1b8a40160748a56d58f")
        
    ]
)