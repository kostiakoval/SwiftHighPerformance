//
//  main.swift
//  swift
//
//  Created by Kostiantyn Koval on 01/08/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import QuartzCore

let ArraySize = 100_000
let Trials = 20

extension Array {
  
  static func make(count: Int, elemet: Void -> Element) -> [Element] {
    var arr = [Element]()
    for _ in 0..<count {
      arr.append(elemet())
    }
    return arr
  }
}

func makeArray() -> [Int] {
  return Array.make(ArraySize) { Int(arc4random_uniform(UINT32_MAX)) }
}

func testSpeed() {
  
  var resultsSum = 0.0
  for _ in 1...Trials {
    let array = makeArray()
    
    let startTime = CACurrentMediaTime()
    let _ = array.sort()
    let totalTime = CACurrentMediaTime() - startTime
    
    print("time: - \(totalTime) sec")
    resultsSum += totalTime
  }
  let reuslt = resultsSum / Double(Trials)
  print("\nRESULT: - \(reuslt) sec")
}

testSpeed()


