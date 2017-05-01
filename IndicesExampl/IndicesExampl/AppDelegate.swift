//
//  AppDelegate.swift
//  IndicesExampl
//
//  Created by apple on 10/04/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Approach 2
        let numbersArray = [1, 2, 5,7, 9 ,23, 21, 65, 32, 76, 24, 43, 26]
        let resultIndices = AppDelegate.getIndices(array: numbersArray,targetValue: 66)
        print(resultIndices)

        return true
    }
    class func getIndices(array:[Int], targetValue:Int) -> [Int]{
        var indices:[Int] = [Int]()
        var map:[Int:Int] = [Int:Int]()
        for value in array {
            
            let index = array.index(of: value)
            let substractionResult = targetValue - value
            if  map.keys.contains(substractionResult){
                indices.append(map[substractionResult]!)
                indices.append(index!)
                return indices
            }
            
            //Value is saved as Key
            map[value] = index
            
        }
        return indices
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
