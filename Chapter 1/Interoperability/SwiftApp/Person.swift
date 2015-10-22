//
//  Swift-to-Objc.swift
//  Chapter-1
//
//  Created by Konstantin Koval on 01/04/15.
//
//

import Foundation

@objc(KOKPerson) class Person: NSObject {
  @objc(isMan) func man() -> Bool {
    return false
  }
}

@objc enum Options: Int {
  case One
  case Two
}
