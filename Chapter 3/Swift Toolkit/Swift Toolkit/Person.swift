//
//  Person.swift
//  Swift Toolkit
//
//  Created by Kostiantyn Koval on 03/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

struct Person {
  let name: String
  let age: Int

  init(name: String, age:Int) {
    self.name = name
    self.age = age
//    usleep(100)
  }
}

extension Person: CustomStringConvertible, CustomDebugStringConvertible {

  // CustomStringConvertible
  var description: String {
    return "Name: \(name)"
  }

  // CustomDebugStringConvertible
  var debugDescription: String {
    return "Name: \(name) age: \(age)"
  }
}
