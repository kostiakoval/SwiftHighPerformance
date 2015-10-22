//
//  3-Dictioanry.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 01/06/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

func testDictionary() {
  for size in sizes {
    print("")
    unknowSizeDictionary(size)
    knowSizeDictionary(size)
  }
}


// MARK: - Allocation
func unknowSizeDictionary(count: Int) {

  measure("Dictionary") {
    var dic = Dictionary<Int, Int>()
    for _ in 0...count {
      let num = random()
      dic[num] = num
    }
  }
}

func knowSizeDictionary(count: Int) {

  measure("Dic Capacity") {
    var dic = Dictionary<Int, Int>(minimumCapacity: count)
    for _ in 0...count  {
      let num = random()
      dic[num] = num
    }
  }
}

// MARK: - Helpers

func makeRandomDictionary(count: Int) -> Dictionary<Int, Int> {

  var dic = Dictionary<Int, Int>(minimumCapacity: count)
  for _ in 0...count  {
    dic[random()] = random()
  }
  return dic
}


