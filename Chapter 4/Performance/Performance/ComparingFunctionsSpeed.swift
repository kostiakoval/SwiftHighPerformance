//
//  MethodsSpeed.swift
//  Performance
//
//  Created by Kostiantyn Koval on 10/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation


@inline(never) func add(x: Int, y: Int) -> Int {
  return x + y
}

class NumOperation {

  @inline(never) func addI(x: Int, y: Int) -> Int {
    return x + y
  }

  @inline(never) class func addC(x: Int, y: Int) -> Int {
    return x + y
  }

  @inline(never) static func addS(x: Int, y: Int) -> Int {
    return x + y
  }
}

class BigNumOperation: NumOperation {

  @inline(never) override func addI(x: Int, y: Int) -> Int {
    return x + y + 1
  }

  @inline(never) override class func addC(x: Int, y: Int) -> Int {
    return x + y + 1
  }
}


func testDifferentMethods() {
  let loopCount: Int = 1000

  measure("func") {
    var result = 0
    for i in 0...loopCount {
      result += add(i, y: i + 1)
    }
    print(result)
  }

  measure("addC") {
    var result = 0
    for i in 0...loopCount {
      result += NumOperation.addC(i, y: i + 1)
    }
    print(result)
  }

  measure("addS") {
    var result = 0
    for i in 0...loopCount {
      result += NumOperation.addS(i, y: i + 1)
    }
    print(result)
  }

  let num = NumOperation()
  measure("addI") {
    var result = 0
    for i in 0...loopCount {
      result += num.addI(i, y: i + 1)
    }
    print(result)
  }

  // BigNum
  measure("BigNum addC") {
    var result = 0
    for i in 0...loopCount {
      result += BigNumOperation.addC(i, y: i + 1)
    }
    print(result)
  }

  measure("BigNum addS") {
    var result = 0
    for i in 0...loopCount {
      result += BigNumOperation.addS(i, y: i + 1)
    }
    print(result)
  }

  let bigNum = BigNumOperation()
  measure("BigNum addI") {
    var result = 0
    for i in 0...loopCount {
      result += bigNum.addI(i, y: i + 1)
    }
    print(result)
  }

  var result = 0
  let baseNum = arc4random_uniform(2) == 1 ? BigNumOperation() : NumOperation()
  for i in 0...loopCount {
    result += baseNum.addI(i, y: i + 1)
  }
  print(result)

  result = 0
  let baseNumType = arc4random_uniform(2) == 1 ? BigNumOperation.self : NumOperation.self
  for i in 0...loopCount {
    result += baseNumType.addC(i, y: i + 1)
  }
  print(result)

}
