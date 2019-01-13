//
//  AppDelegate.swift
//  Eyexercise
//
//  Created by Kevin Bi on 1/11/19.
//  Copyright © 2019 Kevelopment. All rights reserved.
//

import UIKit
import SharkORM

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, SRKDelegate {

    var window: UIWindow?
    static let STATS_DB = "EYEXERCISE_STATS"
    static let ScreenSize = UIScreen.main.bounds.size;
    static let Scale = UIScreen.main.scale
    static let PPI = UIScreen.main.scale * ((UIDevice.current.userInterfaceIdiom == .pad) ? 132 : 163)
    
    public static func Pixels(fromInches inches: CGFloat) -> CGFloat {
        return inches * PPI / Scale;
    }
    
    public static func Inches(fromPixels pixels: CGFloat) -> CGFloat {
        return (pixels * Scale) / PPI;
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        SharkORM.setDelegate(self);
        SharkORM.openDatabaseNamed(AppDelegate.STATS_DB);
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

