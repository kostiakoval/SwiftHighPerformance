//
//  1-SwiftCollections.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 25/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation
import QuartzCore

func testArrayUsage() {
/*
  // Allocations
  for size in sizes {
    print("")
    unknowSizeArray(size)
    knowSizeArray(size)
    defaultArray(size)
  }

  // Acessing
  for size in sizes {
    let array = makeRandomArray(size)
    randomIndexAccess(array)
    accessFirst(array)
    accessLast(array)
  }

  for size in sizes {
    let array = makeRandomArray(size)
    addingItem(array)
  }
*/
  for size in sizes {
    print("")
    let array = makeRandomArray(size)
    insertItemAtFirstIndex(array)
    insertItemAtRandomIndex(array)
  }
/*
  for size in sizes {
    let array = makeRandomArray(size)
    findElements(array)
    sortElements(array)

  }
*/
}

func testArrayElementsInserting() {
  
  for size in sizes {
    print("")
    let array = makeRandomArray(size)
    insertItemAtFirstIndex(array)
    insertItemAtRandomIndex(array)
  }
}

// MARK: - Allocation
func unknowSizeArray(count: Int) {

  measure("Array", times:5) {
    var array = [Int]()
    for _ in 0...count  {
      array.append(random())
    }
  }
}

func knowSizeArray(count: Int) {

  measure("Array Capacity", times:5) {
    var array = [Int]()
    array.reserveCapacity(count)
    for _ in 0...count  {
      array.append(random())
    }
  }
}

func defaultArray(count: Int) {

  measure("Ar Default Value", times:5) {
    var array = [Int](count: count + 1, repeatedValue: 0)
    for i in 0...count  {
      array[i] = (random())
    }
  }
}

// MARK: - Acessing
func randomIndexAccess(ar: [Int]) {
  let size = UInt32(ar.count)
  let index = Int(arc4random_uniform(size))
  var result: Int = 0
  measure("Access", times: 1000) {
    result = ar[index]
  }
  print(result)
}

func accessFirst(ar: [Int]) {
  var result: Int?
  measure("Access First", times: 2) {
    result = ar.first
  }
  print(result)
}

func accessLast(ar: [Int]) {
  var result: Int?
  measure("Access Last", times: 2) {
    result = ar.last
  }
  print(result)
}


// MARK: - Adding

func addingItem(ar: [Int]) {

  var array = ar
  array.append(random())

  let item = random()
  measure("Append", times: 30) {
    array.append(item)
  }
  print(array.last)
}

// MARK: - Insert

func insertItemAtFirstIndex(ar: [Int]) {

  var array = ar
  array.append(random())

  let item = random()

  measure("Insert ") {
    array.insert(item, atIndex: 0)
  }
  print(array.first)
}

func insertItemAtRandomIndex(ar: [Int]) {

  var array = ar
  array.append(random())

  let size = UInt32(ar.count)
  let index = Int(arc4random_uniform(size))
  let item = random()

  measure("Insert Random") {
    array.insert(item, atIndex: index)
  }
  print(array.last)
}

// MARK: - Finding Elements

func findElements(ar: [Int]) {
  var index: Int?

  measure("Find") {
    let item = random()
    index = ar.indexOf(item)
  }
  print(index)
}

// MARK: - Sort Elements

func sortElements(ar: [Int]) {
  var result: [Int] = []

  measure("Sort", times: 2) {
    result = ar.sort()
  }
  print("\(result.first)")
}



// MARK: - Helpers

func makeRandomArray(count: Int) -> [Int] {

  var array = [Int]()
  array.reserveCapacity(count)
  for _ in 0...count  {
    array.append(random())
  }
  return array
}

