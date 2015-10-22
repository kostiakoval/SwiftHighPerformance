//
//  AppDelegate.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 06/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    let worker = SafeWorker()
    worker.safeMultithreading()

//    let dangerousWorker = DangerousWorker()
//    dangerousWorker.dangerousMultithreading()
    
    return true
  }
}

