//
//  SceneDelegate.swift
//  MealLog
//
//  Created by 홍창남 on 2020/05/31.
//  Copyright © 2020 hcn1519. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowScene = scene as? UIWindowScene else { return }

        let mainView = MainView().environmentObject(MainViewModel())
        let window = UIWindow(windowScene: windowScene)
        let rootVC = UIHostingController(rootView: mainView)
        window.rootViewController = rootVC
        self.window = window
        window.makeKeyAndVisible()
    }
}
