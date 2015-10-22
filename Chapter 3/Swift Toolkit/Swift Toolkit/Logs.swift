//
//  Logs.swift
//  Swift Toolkit
//
//  Created by Kostiantyn Koval on 02/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import QuartzCore

func measure(call: () -> Void) {
  let startTime = CACurrentMediaTime()
  call()
  let endTime = CACurrentMediaTime()

  print("Time - \(endTime - startTime)")
}
