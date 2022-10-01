//
//  AppDelegate.swift
//  PermissionApp
//
//  Created by Sun on 07/09/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    let permissionManager = PermissionManager()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let viewController = storyBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            window?.rootViewController = viewController
            window?.makeKeyAndVisible()
        }
        permissionManager.showListPermission()
        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        permissionManager.reload()
    }
}
