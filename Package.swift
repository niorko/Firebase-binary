// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Firebase-binary",
    products: [
        .library(
            name: "Firebase-binary",
            targets: [
                "FirebaseCrashlytics",
                "FirebaseInstallations",
                "GoogleDataTransport",
                "GoogleUtilities",
                "GoogleAppMeasurementIdentitySupport",
                "FirebaseCore",
                "FirebaseAnalytics",
                "GoogleAppMeasurement",
                "PromisesObjC",
                "FirebaseCoreDiagnostics",
                "nanopb",
                "FirebaseMessaging",
                "FirebaseRemoteConfig",
                "FirebaseABTesting",
                "FirebasePerformance",
            ]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FirebaseCrashlytics",
            path: "Firebase/FirebaseCrashlytics/FirebaseCrashlytics.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseInstallations",
            path: "Firebase/FirebaseAnalytics/FirebaseInstallations.xcframework.zip"
        ),
        .binaryTarget(
            name: "GoogleDataTransport",
            path: "Firebase/FirebaseAnalytics/GoogleDataTransport.xcframework.zip"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            path: "Firebase/FirebaseAnalytics/GoogleUtilities.xcframework.zip"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurementIdentitySupport",
            path: "Firebase/FirebaseAnalytics/GoogleAppMeasurementIdentitySupport.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseCore",
            path: "Firebase/FirebaseAnalytics/FirebaseCore.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseAnalytics",
            path: "Firebase/FirebaseAnalytics/FirebaseAnalytics.xcframework.zip"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            path: "Firebase/FirebaseAnalytics/GoogleAppMeasurement.xcframework.zip"
        ),
        .binaryTarget(
            name: "PromisesObjC",
            path: "Firebase/FirebaseAnalytics/PromisesObjC.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseCoreDiagnostics",
            path: "Firebase/FirebaseAnalytics/FirebaseCoreDiagnostics.xcframework.zip"
        ),
        .binaryTarget(
            name: "nanopb",
            path: "Firebase/FirebaseAnalytics/nanopb.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseMessaging",
            path: "Firebase/FirebaseMessaging/FirebaseMessaging.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseRemoteConfig",
            path: "Firebase/FirebasePerformance/FirebaseRemoteConfig.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebaseABTesting",
            path: "Firebase/FirebasePerformance/FirebaseABTesting.xcframework.zip"
        ),
        .binaryTarget(
            name: "FirebasePerformance",
            path: "Firebase/FirebasePerformance/FirebasePerformance.xcframework.zip"
        ),
    ],
    cxxLanguageStandard: .cxx14
)

