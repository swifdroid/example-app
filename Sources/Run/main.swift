import Droidy

Droidy()
//    .automaticallyInstallJava()
    .automaticallyDownloadGradle()
    .automaticallyDownloadNDK()
    .automaticallyDownloadToolchain()
    .automaticallyDownloadSDK()
//    .localGradleArchive("/Users/imike/Downloads/gradle-7.1.1-bin.zip")
//    .localNDKArchive("/Users/imike/Downloads/android-ndk-r21e-darwin-x86_64.zip")
    .preferredToolchainVersion("5.5.2")
//    .localToolchainArchive("/Users/imike/Downloads/swift-android-toolchain.tar.gz")
//    .localSDKArchive("/Users/imike/Downloads/commandlinetools-mac-7302050_latest.zip")
    .architectures(.aarch64, .armv7, .i686, .x86_64)
//    .signingConfig(
//        storeFile: "/Users/imike/store.file",
//        storePassword: "qwerty",
//        keyAlias: "key",
//        keyPassword: "qwerty"
//    )
    .projectApplicationId("com.swifdroid.example")
    .projectVersionCode(1)
    .projectVersionName("1.0.0")
//	.preferredDevice(model: "ONEPLUS_A3003")
//	.preferredDevice(id: "emulator-5556")
    .build("App")
    .run()
