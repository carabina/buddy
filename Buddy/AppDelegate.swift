import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}
}

struct ClientConstant {
    static let token = "yN9KTZm4s8m5R7X1YcvZxRH7wQ1xLjgp8ibCd11lf4Ne4DJnJdsWEqbYZDrP8vH7OFG8rzHfMDvAIbToGxsQGAxhWUs6C0Sd7A4WGmPCSYDHq1dIUE3kXjyesVNv"
    static let baseUrl = "https://api.buddybuild.com/v1"
}

enum Buddy {
    static var service = BuddyService(configuration: Configuration(token: ClientConstant.token,
                                                                   baseUrl: ClientConstant.baseUrl))
}

