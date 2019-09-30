//
//  AppDelegate.swift
//  sample-swift-scene-life-cycle

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("===== didFinishLaunchingWithOptions" + self.getState())

        return true
    }

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        print("===== willFinishLaunchingWithOptions" + self.getState())
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Active状態からInactive状態に遷移する時に呼ばれる
        print("===== applicationWillResignActive" + self.getState())
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        print("===== applicationDidEnterBackground" + self.getState())
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        print("===== applicationWillEnterForeground" + self.getState())
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        print("===== applicationDidBecomeActive" + self.getState())
    }

    func applicationWillTerminate(_ application: UIApplication) {
        print("===== applicationWillTerminate" + self.getState())
    }

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        print("===== configurationForConnecting" + self.getState())
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    func applicationDidFinishLaunching(_ application: UIApplication) {
        print("===== applicationDidFinishLaunching" + self.getState())
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        print("===== didDiscardSceneSessions" + self.getState())
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

    private func getState() -> String{
        let app = UIApplication.shared
        switch app.applicationState {
        case .active:
            return " [Active] "

        case .background:
            return " [Background] "

        case .inactive:
            return " [Inactive] "

        default:
            return " [Unknown] "
        }
    }

}

