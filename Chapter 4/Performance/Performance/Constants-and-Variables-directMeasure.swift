//
//  Constants-and-Variables.swift
//  Performance
//
//  Created by Kostiantyn Koval on 07/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import QuartzCore

func testSimpleConstantSpeed_inlineMeasure() {
  let times = 20
  var results = [CFTimeInterval]()

  for _ in 1...times {
    let startTime = CACurrentMediaTime()

    var result = 0
    for _ in 0...10000000 {
      let a = Int(arc4random())
      result += a
    }
    print(result)

    let endTime = CACurrentMediaTime()
    let time =  endTime - startTime
    results.append(time)
  }

  let avarage = results.reduce(0, combine: +) / Double(times)
  print("Average Time - \(avarage)")

  //other
  results.removeAll()

  for _ in 1...times {
    let startTime = CACurrentMediaTime()

    var result = 0
    for _ in 0...10000000 {
      let a = Int(arc4random())
      result += a
    }
    print(result)

    let endTime = CACurrentMediaTime()
    let time =  endTime - startTime
    results.append(time)
  }
  
  let avarage2 = results.reduce(0, combine: +) / Double(times)
  print("Average Time - \(avarage2)")

}

