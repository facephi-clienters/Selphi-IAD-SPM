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
        .package(url: "git@github.com:facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "3.27.2")),
        .package(url: "git@github.com:facephi-clienters/FPHISelphiResources-SPM.git", .exactItem("6.2.0")),
        .package(url: "git@github.com:facephi-clienters/FPBTokenizer-SPM.git", .exactItem("4.0.4")),
        .package(url: "git@github.com:facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMajor(from: "0.5.7")),
        .package(url: "git@github.com:facephi-clienters/FPHIIADFrameworks-SPM.git", .upToNextMajor(from: "2.5.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Selphi-IAD-SPM",
            dependencies: [
                "FPhiWidgetCore",
                "FPhiWidgetSelphi",
                .product(name: "FPHIRecognitionHelper-SPM", package: "FPHIRecognitionHelper-SPM"),
                .product(name: "FPHIIADFrameworks-SPM", package: "FPHIIADFrameworks-SPM"),
                .product(name: "FPBTokenizer-SPM", package: "FPBTokenizer-SPM"),
                .product(name: "FPHILicenseManager-SPM", package: "FPHILicenseManager-SPM")]),

                    
        .binaryTarget(name: "FPhiWidgetCore",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.2.0/FPhiWidgetCore.zip",
        checksum: "21c57d1ead4f0d099dd2f8ab3351bb29a03ad02390b2e38267a2f3a41128cb44"),
        .binaryTarget(name: "FPhiWidgetSelphi",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiIADFrameworks/6.2.0/FPhiWidgetSelphi.zip",
        checksum: "9a6e697e701aad9e0fcf76c45a4b143b90979a19444f930ba9808ac764d43324")
        
        
    ]
)