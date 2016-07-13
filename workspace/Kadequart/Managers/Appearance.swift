//
//  Appearance.swift
//  Kadequart
//
//  Created by Jethro Ordaneza on 13/07/2016.
//  Copyright © 2016 Kokel Mekong. All rights reserved.
//

import UIKit

struct Appearance {
  static func setDefaults() {
    let barTint = uicolorFromHex(.NavigationBarTint)
    let tint = uicolorFromHex(.NavigationTint)

    UINavigationBar.appearance().barTintColor = barTint
    UINavigationBar.appearance().tintColor = tint
    UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: tint]

    UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
  }

  static func uicolorFromHex(appColor: AppColor) -> UIColor {
    let hex = appColor.rawValue
    let red = CGFloat((hex & 0xFF0000) >> 16) / 256.0
    let green = CGFloat((hex & 0xFF00) >> 8) / 256.0
    let blue = CGFloat(hex & 0xFF) / 256.0

    return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
  }
}
