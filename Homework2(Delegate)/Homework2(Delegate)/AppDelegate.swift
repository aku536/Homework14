//
//  AppDelegate.swift
//  Homework2(Delegate)
//
//  Created by Кирилл Афонин on 24/11/2019.
//  Copyright © 2019 Кирилл Афонин. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        let waiter = ISSWaiter()
        let vc = ViewController(waiter: waiter)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }

}

