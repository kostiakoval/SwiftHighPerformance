//
//  2-Set.swift
//  DataStructures
//
//  Created by Kostiantyn Koval on 30/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation


func testSet() {

  for size in sizes {
    print("")
//    unknowSizeSet(size)
//    knowSizeSet(size)

    let set = makeRandomSet(size)
/*
    func_equal(set)

    set_contains(set)
    set_indexOf(set)
    set_equal(set)
*/

/*
    set_contains(set)
    set_indexOf(set)
    set_subscript(set)

    set_insert(set)
    set_remove(set)
    set_removeAtIndex(set)
*/

// Set vs Array as a Parameter
 /*
    set_isSubsetOf(set)
    set_isSubsetOf_otherSet(set)

    set_isSubsetOf_ar(set)
    set_isSubsetOf_otherAr(set)
*/

    set_union(set)
    set_subtract(set)
    set_intersect(set)
    set_exclusiveOr(set)

/*
    set_union_ar(set)
    set_subtract_ar(set)
    set_intersect_ar(set)
    set_exclusiveOr_ar(set)
*/

  }
}

func testSetOperations() {
  for size in SetOperationSizes {
    print("")
    let set = makeRandomSet(size)

    set_union(set)
    set_subtract(set)
    set_intersect(set)
    set_exclusiveOr(set)
  }
}

func testSetOperationsWithArray() {
  for size in SetOperationSizes {
    print("")
    let set = makeRandomSet(size)
    
    set_union_ar(set)
    set_subtract_ar(set)
    set_intersect_ar(set)
    set_exclusiveOr_ar(set)
  }
}

func testSetIsSubsetOf_Set () {
  
  for size in SetIsSubsetOfSizes {
    print("")
    let set = makeRandomSet(size)
    
    set_isSubsetOf(set)
    set_isSubsetOf_otherSet(set)
  }
}

func testSetIsSubsetOf_Array () {
  
  for size in SetIsSubsetOfSizes {
    print("")
    let set = makeRandomSet(size)
    
    set_isSubsetOf_ar(set)
    set_isSubsetOf_otherAr(set)
  }
}



// MARK: - Allocation
func unknowSizeSet(count: Int) {

  measure("Set", times:5) {
    var set = Set<Int>()
    for _ in 0...count {
      set.insert(random())
    }
  }
}

func knowSizeSet(count: Int) {

  measure("Set Capacity", times:5) {
    var set = Set<Int>(minimumCapacity: count)
    for _ in 0...count  {
      set.insert(random())
    }
  }
}

// MARK: - Lookup
func set_contains(set: Set<Int>) {

  var res: Bool = false
  measure("Set.contains", times:5) {
    res = set.contains(random())
  }
  print(res)
}

func set_indexOf(set: Set<Int>) {

  var res: SetIndex<Int>?

  measure("IndexOf", times:5) {
    res = set.indexOf(random())
  }
  print(res)
}

func set_subscript(set: Set<Int>) {

  let index = set.startIndex.advancedBy(set.count / 2)

  var res: Int = 0
  measure("Subscript", times:5) {
    res = set[index]
  }
  print(res)
}

func set_equal(set: Set<Int>) {

  var otherSet = set
  otherSet.insert(random())

  var res: Bool = true
  measure("Equal", times:5) {
    res = set == otherSet
  }
  print(res)
}

// MARK: - Update
func set_insert(set: Set<Int>) {

  var numbers = set
  numbers.insert(random())

  measure("Insert", times:5) {
    numbers.insert(random())
  }
  print(numbers.first)
}

func set_remove(set: Set<Int>) {

  var numbers = set
  numbers.insert(random())
  let element = set[numbers.startIndex.advancedBy(numbers.count / 2)]

  var res: Int?
  measure("Remove") {
    res = numbers.remove(element)
  }
  print(res)
}

func set_removeAtIndex(set: Set<Int>) {

  var numbers = set
  numbers.insert(random())
  let index = numbers.startIndex.advancedBy(numbers.count / 2)

  measure("RemoveAtIndex", printOnlyAverage: true) {
    numbers.removeAtIndex(index)
  }
  print(numbers.count)
}


// MARK: - Compare Operations

func set_isSubsetOf(set: Set<Int>) {

  var otherSet = set
  otherSet.insert(random())

  var res: Bool = false
  measure("IsSubsetOf", times: 5) {
    res = set.isSubsetOf(otherSet)
  }
  print(res)
}

func set_isSubsetOf_otherSet(set: Set<Int>) {

  let otherSet = makeRandomSet(set.count)

  var res: Bool = false
  measure("IsSubsetOf random", times: 5) {
    res = set.isSubsetOf(otherSet)
  }
  print(res)
}


// MARK: - Compare Operations Arrays

func set_isSubsetOf_ar(set: Set<Int>) {

  var otherSequence = Array(set)
  otherSequence.append(random())

  var res: Bool = false
  measure("IsSubsetOf Array") {
    res = set.isSubsetOf(otherSequence)
  }
  print(res)
}

func set_isSubsetOf_otherAr(set: Set<Int>) {

  let otherSequence = makeRandomArray(set.count)

  var res: Bool = false
  measure("IsSubsetOf random Arrray") {
    res = set.isSubsetOf(otherSequence)
  }
  print(res)
}

// MARK: - Set Operations

func set_union(set: Set<Int>) {

  let otherSet = makeRandomSet(set.count)

  var res: Set<Int> = Set()
  measure("Union", times: 5) {
    res = set.union(otherSet)
  }
  print(res.count)
}

func set_subtract(set: Set<Int>) {

  let otherSet = makeRandomSet(set.count)

  var res: Set<Int> = Set()
  measure("Subtract", times: 5) {
    res = set.subtract(otherSet)
  }
  print(res.count)
}

func set_intersect(set: Set<Int>) {

  let otherSet = makeRandomSet(set.count)

  var res: Set<Int> = Set()
  measure("Intersect", times: 5) {
    res = set.intersect(otherSet)
  }
  print(res.count)
}

func set_exclusiveOr(set: Set<Int>) {

  let otherSet = makeRandomSet(set.count)

  var res: Set<Int> = Set()
  measure("ExclusiveOr", times: 5) {
    res = set.exclusiveOr(otherSet)
  }
  print(res.count)
}


// MARK: - Set Operations With Array

func set_union_ar(set: Set<Int>) {

  let otherSequence = makeRandomArray(set.count)

  var res: Set<Int> = Set()
  measure("Union", times: 5) {
    res = set.union(otherSequence)
  }
  print(res.count)
}

func set_subtract_ar(set: Set<Int>) {

  let otherSequence = makeRandomArray(set.count)

  var res: Set<Int> = Set()
  measure("Subtract", times: 5) {
    res = set.subtract(otherSequence)
  }
  print(res.count)
}

func set_intersect_ar(set: Set<Int>) {

  let otherSequence = makeRandomArray(set.count)

  var res: Set<Int> = Set()
  measure("Intersect", times: 5) {
    res = set.intersect(otherSequence)
  }
  print(res.count)
}

func set_exclusiveOr_ar(set: Set<Int>) {

  let otherSequence = makeRandomArray(set.count)

  var res: Set<Int> = Set()
  measure("ExclusiveOr", times: 5) {
    res = set.exclusiveOr(otherSequence)
  }
  print(res.count)
}

//MARK: - func

func func_equal(set: Set<Int>) {

  var otherSet = set
  otherSet.insert(random())

  var res: Bool = true
  measure("Equal func", times:5) {
    res = set.elementsEqual(otherSet)
  }
  print(res)
}


// MARK: - Helpers

func makeRandomSet(count: Int) -> Set<Int> {

  var set = Set<Int>(minimumCapacity: count)
  for _ in 0...count  {
    set.insert(random())
  }
  return set
}
