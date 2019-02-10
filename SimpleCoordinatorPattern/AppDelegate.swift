//
//  AppDelegate.swift
//  SimpleCoordinatorPattern
//
//  Created by kawaguchi kohei on 2019/02/10.
//  Copyright © 2019年 kawaguchi kohei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var coordinator: AppCoordinator?
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        coordinator = AppCoordinator()
        coordinator?.start()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = coordinator?.presenter
        window?.makeKeyAndVisible()
        return true
    }
}

