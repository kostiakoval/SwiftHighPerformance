//
//  Logs.swift
//  Swift Toolkit
//
//  Created by Kostiantyn Koval on 02/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import QuartzCore

func measure(title: String? = nil, times: Int = 20, printOnlyAverage: Bool = true, call: () -> Void) {
  var results = [CFTimeInterval]()
  for _ in 1...times {
    let startTime = CACurrentMediaTime()
    call()
    let endTime = CACurrentMediaTime()
    let time =  endTime - startTime
    results.append(time)

    if !printOnlyAverage {
      print("Time - \(time)")
    }
  }

  if let title = title {
    print("\(title) : ", terminator: "")
  }
  let avarage = results.reduce(0, combine: +) / Double(times)
  print("Average - \(avarage)")
}
