//
//  AppDelegate.swift
//  SwiftApp
//
//  Created by Kostiantyn Koval on 02/08/15.
//
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    MyClass.sayHi()

    return true
  }
  
}

