//
//  SwiftKit.swift
//  Interoperability
//
//  Created by Kostiantyn Koval on 03/08/15.
//
//

import Foundation

// Must be marked with public
@objc(KOKPerson) public class Person: NSObject {
  @objc(isMan) public func man() -> Bool {
    return false
  }
}

func testObjc() {
  MyClass.sayHi()
}
