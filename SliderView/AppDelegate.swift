//
//  AppDelegate.swift
//  SliderView
//
//  Created by Asadbek on 23/09/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainVC(nibName: "MainVC", bundle: nil)
        let nav = UINavigationController(rootViewController: vc)
        window?.makeKeyAndVisible()
        window?.rootViewController = nav
        
        
        
        return true
    }




}

