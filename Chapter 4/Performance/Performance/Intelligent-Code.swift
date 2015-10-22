//
//  Inteligent-Code.swift
//  Performance
//
//  Created by Kostiantyn Koval on 14/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

final class Object {
  final func nothing() {
  }
}

class Object2 {
  let x: Int
  let y: Int
  let z: Int

  init(x: Int) {
    self.x = x
    self.y = x * 2
    self.z = y * 2
  }

  func nothing() {
  }
}

class Object3 {
  let x: Int
  let y: Int
  let z: Int

  init(x: Int) {
    self.x = x
    self.y = x * 2
    self.z = y * 2
  }

  func nothing() {
    print(x + y + z)
  }
}

func D_print(items: Any..., separator: String = " ", terminator: String = "\n") {
  #if DEBUG
    print(items, separator: separator, terminator: terminator)
  #endif
}

// Using Objective-C bridgeable type


enum ABC {
  case A
  case B
  case C
}

enum ABCRaw: Int {
  case A = 10
  case B = 1
  case C = 99
}

enum ABCWithValues {
  case A (Int)
  case B (Int, Int)
}

// usage
class Optimizable {
  let x: Int = 10
//  let a = ""

  let y: Double = 10.0
  var z: Float = 8.1

  let a: Int? = nil
  let b: (Int, Int) = (0, 1)
  let c: ABC = .A
  let d: ABCRaw = .A
  let e: ABCWithValues = .B(1, 2)

  let range = 0...10
}

struct NotOptimizableSt {

  let a: String = ""
  let b: String? = nil
  let c: Array<Int> = [1]
  let obj = Object()
  let d: Int -> Int = { $0 + 1 }

 //let e: Set<Int> = [1]
 //let f: Dictionary<Int, Int> = [10 : 11]
  // Not so much work. Set is worse
}


class NotOptimizableC {

  let a: String = ""
  let b: String? = nil
  let c: Array<Int> = [1]
  let obj = Object()
  let d: Int -> Int = { $0 + 1 }

  let e: Set<Int> = [1]
  let f: Dictionary<Int, Int> = [1 : 1]
}


final class OptimizableClass {
  let st = Object()
}



