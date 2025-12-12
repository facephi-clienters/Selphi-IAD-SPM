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
        .package(url: "git@github.com:facephi-clienters/SDK-ZipZap-SPM.git", from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/FPHIFPBExtractoriOS-SPM.git", from: "5.5.2"),
        .package(url: "git@github.com:facephi-clienters/FPHISelphiResources-SPM.git", .exactItem("5.20.2")),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Selphi-IAD-SPM",
            dependencies: [
                "FPhiWidgetCore",
                "FPhiWidgetSelphi",
                "IDLiveFaceDetection",
                "IDLiveFaceCamera",
                "IDLiveFaceIAD",
                .product(name: "FPhiZipZap", package: "SDK-ZipZap-SPM"),
                .product(name: "FPHIFPBExtractoriOS-SPM", package: "FPHIFPBExtractoriOS-SPM")]),

                    
        .binaryTarget(name: "FPhiWidgetCore", path: "FrameworkSelphi/FPhiWidgetCore.xcframework"),
        .binaryTarget(name: "FPhiWidgetSelphi", path: "FrameworkSelphi/FPhiWidgetSelphi.xcframework"),
        .binaryTarget(name: "IDLiveFaceIAD", path: "FrameworkSelphi/IDLiveFaceIAD.xcframework"),
        .binaryTarget(name: "IDLiveFaceCamera", path: "FrameworkSelphi/IDLiveFaceCamera.xcframework"),
        .binaryTarget(name: "IDLiveFaceDetection", path: "FrameworkSelphi/IDLiveFaceDetection.xcframework"),
        
       
        

        
    ]
)
