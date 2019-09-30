//
//  SceneDelegate.swift
//  sample-swift-scene-life-cycle

import UIKit
import SwiftUI

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    private func getState(scene: UIScene) -> String{
        switch(scene.activationState) {
        case .background:
            return " [Background]"
        case .foregroundActive:
            return " [Forground Active]"
        case .foregroundInactive:
            return " [Forground Inactive]"
        case .unattached:
            return " [unattached]"
        @unknown default:
            return " [unknown]"
        }
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print("===== scene willConnectTo " + self.getState(scene: scene))
        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print("===== sceneDidDisconnect "  + self.getState(scene: scene))
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("===== sceneDidBecomeActive " + self.getState(scene: scene))
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("===== sceneWillResignActive " + self.getState(scene: scene))
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("===== sceneWillEnterForeground " + self.getState(scene: scene))
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("===== sceneDidEnterBackground " + self.getState(scene: scene))
    }
}

