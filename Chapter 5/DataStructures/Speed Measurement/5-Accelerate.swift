//
//  5-Accelerate.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 03/06/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import Accelerate

func testAccelerate () {
  testSwiftMethods()
  testAccelerateMethods()
}


func testSwiftMethods() {

  for size in sizes {

    let array = makeRandomDoubleArray(size)
    var result = [Double]()
    measure("map") {
      result = array.map { $0 + 3.0 }
    }
    print(result.count)

    var sum = 0.0
    measure("reduce") {
      sum = array.reduce(0.0, combine: +)
    }
    print(sum)
  }
}

func testAccelerateMethods() {

  for size in sizes {
    let array = makeRandomDoubleArray(size)

    // vDSP Version
    var result = [Double](count : array.count, repeatedValue : 0.0)
    var add = 3.0

    measure("vDSP_vsaddD") {
      vDSP_vsaddD(array, 1, &add, &result, 1, vDSP_Length(array.count))
    }
    print(result.count)

    var sum = 0.0
    measure("vDSP_sveD") {
      vDSP_sveD(array, 1, &sum, vDSP_Length(array.count))
    }
    print(sum)
  }
}

//MARK: - Helpers

func makeRandomDoubleArray(count: Int) -> [Double] {
  
  var array = [Double]()
  array.reserveCapacity(count)
  for _ in 0...count  {
    array.append(Double(random()))
  }
  return array
}

