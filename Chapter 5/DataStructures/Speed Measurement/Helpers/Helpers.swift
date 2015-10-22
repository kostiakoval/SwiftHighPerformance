//
//  Helpers.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 30/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

//Arrays
@inline(__always) func random() -> Int {
  return Int(arc4random())
}

let sizes = [
  100,
  5_000,
  50_000,

  500_000,
  5_000_000,
  50_000_000,

  500_000_000,

  //1_000_000_000,
  //2_000_000_000,
]


let SetOperationSizes = [
  100,
  500_000
]

let SetIsSubsetOfSizes = [
  50_000,
  5_000_000
]

let MemoryAllocationSizes = [
  500,
  50_000_000
]
