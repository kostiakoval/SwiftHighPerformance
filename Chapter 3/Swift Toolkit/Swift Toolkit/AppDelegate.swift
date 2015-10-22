  //
//  AppDelegate.swift
//  Swift Toolkit
//
//  Created by Kostiantyn Koval on 26/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   var window: UIWindow?

   func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    LLDBTutorial()
    REPLTutorial()
    simpleLog()

    return true
  }

  func LLDBTutorial() {
    let name = "Sam"
    print(name)
  }

  func REPLTutorial() {
    let numbers = [2, -3, 1]
    let result = skipNegatives(numbers)
    print(result)

    let manyNumbers = makeNumbers()
    let bigResult = skipNegatives(manyNumbers)
    print(bigResult)
  }

  func simpleLog() {
    print("value")

    measure {
      for i in 0...10000 {
        let person = Person(name: "Sam", age: i)
        print(person)
      }
    }
  }
}


public func makeNumbers() -> [Int] {
  var array = [Int]()
  for _ in 0..<1000 {
    let rand = Int(arc4random_uniform(10)) - 5
    array.append(rand)
  }
  return array
}


public func skipNegatives(a: [Int]) -> [Int] {
  return a.filter { $0 >= 0 }
}
