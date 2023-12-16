//
//  AppDelegate.swift
//  MVVMCourse2_Movies
//
//  Created by stevan on 14/12/2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    //1) "window" object:
    var window: UIWindow? //we need a window to present our data

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //2) we already have our "window" object, now we need to define it:
        //(frame: UIScene.main.bounds) -> its the whole screen of the phone, and attach it to the "window"
        let window = UIWindow()
        
        //6)Now we will create a navigation controller, and give as the rootViewController the MainViewController()
        let navigationController = UINavigationController(rootViewController: MainViewController())
        //7) Now we change the rootViewController of our window to navigationController:
        window.rootViewController = navigationController
        //3) whats my "window" rootViewController? We need to attach the one we created a few moments ago: the class "MainViewController":
        //**changed in step 7:
        //window.rootViewController = MainViewController()
        //4) Now we need to make our window visible for the application cell:
        window.makeKeyAndVisible()
        //5) Assign your self "window" (that is on step 1 - var window: UIWindow?) the constant that we created and filled on steps 2, 3 and 4:
        self.window = window
        return true
    }
}

//func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//    // Override point for customization after application launch.
//
//    //2) we already have our "window" object, now we need to define it:
//    //(frame: UIScene.main.bounds) -> its the whole screen of the phone, and attach it to the "window"
//    let window = UIWindow()
//    //3) whats my "window" rootViewController? We need to attach the one we created a few moments ago: the class "MainViewController":
//    window.rootViewController = MainViewController()
//    //4) Now we need to make our window visible for the application cell:
//    window.makeKeyAndVisible()
//    //5) Assign your self "window" (that is on step 1 - var window: UIWindow?) the constant that we created and filled on steps 2, 3 and 4:
//    self.window = window
//    return true
//}

