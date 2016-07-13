//
//  AppDelegate.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 11/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    App.shared.bootstrap()
    Appearance.setDefaults()
    return true
  }

  func applicationWillResignActive(application: UIApplication) {

  }

  func applicationDidEnterBackground(application: UIApplication) {

  }

  func applicationWillEnterForeground(application: UIApplication) {

  }

  func applicationDidBecomeActive(application: UIApplication) {

  }

  func applicationWillTerminate(application: UIApplication) {

  }
}

