//
//  Dog.swift
//  Performance
//
//  Created by Kostiantyn Koval on 09/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

class Dog {
  var name = ""

  static func speak() {
    print("I don't speak")
  }

  class func bark() {
    print("Bark")
  }

  func changeName(name: String) {
    self.name = name
  }
}

class BigDog: Dog {
  override class func bark() {
    print("big loud BARK")
  }
}

func getDog() -> Dog.Type {
  return arc4random() % 2 == 0 ? Dog.self : BigDog.self
}
