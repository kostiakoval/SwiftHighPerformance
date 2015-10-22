//
//  FunctionsAndMethods.swift
//  Performance
//
//  Created by Kostiantyn Koval on 05/09/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

func functionsAndMethods() {
  let dog = getDog()
  dog.bark()

  Dog.bark()

  // - Static method

  Dog.speak()
  BigDog.speak()

  // - Instance method

  let someDog = Dog()
  someDog.changeName("Cocoa")
}
