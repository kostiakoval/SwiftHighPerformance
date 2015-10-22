//
//  DebugTools.swift
//  Swift Toolkit
//
//  Created by Kostiantyn Koval on 13/08/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

public func isAllPositive(ar: [Int]) -> Bool {
  let negatives = ar.filter { $0 < 0 }
  return negatives.count == 0
}
