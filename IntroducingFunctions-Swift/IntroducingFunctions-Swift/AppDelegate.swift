//
//  AppDelegate.swift
//  IntroducingFunctions-Swift
//
//  Created by Douglas Voss on 4/13/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func printIntroductions(name: String) -> Void {
        println(String(format: "My name is %@", name))
        println(String(format: "%@ to mouishimasu", name))
    }
    
    func countDownTilIntroduction(numberOfDays : Int) -> Void {
        if (numberOfDays==0) {
            println("The time has come")
        } else {
            println("\(numberOfDays) days left until introductions")
            var oneLessDay : Int = numberOfDays - 1
            countDownTilIntroduction(oneLessDay)
        }
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var myName : String = "Doug"
        //String(format: "hex string: %X", 123456)
        //var introduction : String = String(format: "My name is %@", myName)
        //println("introduction = \(introduction)")
        //var japaneseIntroduction : String = String(format: "%@ to mouishimasu", myName)
        //println("japaneseIntroduction = \(japaneseIntroduction)")
        countDownTilIntroduction(4)
        printIntroductions(myName)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

