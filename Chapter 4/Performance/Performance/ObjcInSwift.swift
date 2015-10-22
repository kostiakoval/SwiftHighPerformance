//
//  ObjcInSwift.swift
//  Performance
//
//  Created by Kostiantyn Koval on 23/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

// --- Avoiding Objective-C
func testObjcInSwift() {

  // Dangerous use of Objective-C
  for _ in 0...100 {
    _ = NSObject()
  }

  // Dangerous use of a class that inherit from Objective-C
  for _ in 0...100 {
    _ = MyNSObject()
  }
  
  // Safe use of pure Swift type
  for _ in 0...100 {
    _ = MyObject()
  }

  // Dangerous use of dynamic
  for _ in 0...100 {
    let object = MyObject()
    object.fullName
    object.getName()
  }
}

class MyNSObject: NSObject {
}

class MyObject {
  dynamic func getName() -> String {
    return "Name"
  }
  
  dynamic var fullName: String {
    return "Full Name"
  }
}


