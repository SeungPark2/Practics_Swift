//
//  AppDelegate.swift
//  Msg-Notification
//
//  Created by PST on 27/02/2019.
//  Copyright © 2019 PST. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
            if #available(iOS 10.0, *) {
                let notiCenter = UNUserNotificationCenter.current()
                notiCenter.requestAuthorization(options: [.alert, .badge, .sound]) {(didAllow, e) in }
                notiCenter.delegate = self
            } else {
                let setting = UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
                
                application.registerUserNotificationSettings(setting)
            }
            return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().getNotificationSettings { settings in
                if settings.authorizationStatus == UNAuthorizationStatus.authorized{
                    let nContent = UNMutableNotificationContent()
                    nContent.badge = 1
                    nContent.title = "로컬 알람 메세지"
                    nContent.subtitle = "준비된 내용이 아주 많아요! 얼른 다시 앱을 열어주세요"
                    nContent.body = "앗! 왜 나갔어요??? 어서 들어오세요!!"
                    nContent.sound = UNNotificationSound.default
                    nContent.userInfo = ["name": "홍길동"]
                    
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                    
                    let request = UNNotificationRequest(identifier: "wakeup", content: nContent, trigger: trigger)
                    
                    UNUserNotificationCenter.current().add(request)
                } else {
                    let setting = application.currentUserNotificationSettings
                    
                    guard setting?.types != .none else {
                        print("Can't Schedule")
                        return
                    }
                    
                    let noti = UILocalNotification()
                    noti.fireDate = Date(timeIntervalSinceNow: 10)
                    noti.timeZone = TimeZone.autoupdatingCurrent
                    noti.alertBody = "얼른 다시 접속하세요!!!"
                    noti.alertAction = "학습하기"
                    noti.applicationIconBadgeNumber = 1
                    noti.soundName = UILocalNotificationDefaultSoundName
                    noti.userInfo = ["name":"홍길동"]
                    
                    application.scheduleLocalNotification(noti)
                }
            }
        } else {
        }
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
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        if response.notification.request.identifier == "weakup" {
            let userInfo = response.notification.request.content.userInfo
            print(userInfo["name"]!)
        }
        completionHandler()
    }

}

