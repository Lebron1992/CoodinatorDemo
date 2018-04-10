//
//  AppDelegate.swift
//  CoodinatorDemo
//
//  Created by Lebron on 2018/4/9.
//  Copyright © 2018 Lebron. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    static let shared = UIApplication.shared.delegate as? AppDelegate

    var window: UIWindow?

    lazy var mainCoordinator: MainCoordinator = {
        let nav = UINavigationController()
        let coordinator = MainCoordinator(navigationController: nav)
        return coordinator
    }()

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        mainCoordinator.launch()

        return true
    }

}
