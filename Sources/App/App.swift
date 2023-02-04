import Droid

@main
class App: DroidApp {
    @AppBuilder override var body: Content {
        Lifecycle.didBecomeActive {
            print(.debug, "APP", "Lifecycle.didBecomeActive")
        }
		Manifest
			.package("com.swifdroid.example")
			.versionCode(1)
			.versionName("1.0.0")
			.application {
				.name("")
				.allowBackup()
				.allowNativeHeapPointerTagging(false) // very important
				.icon("@mipmap/ic_launcher")
//				.roundIcon("@mipmap/ic_launcher_round")
				.label("Example")
				
//				.activity {
//					DroidApp.Activity.
//				}
			}
    }
}
