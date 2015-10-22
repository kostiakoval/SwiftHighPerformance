//
//  Arrays.swift
//  Performance
//
//  Created by Kostiantyn Koval on 18/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

// --- Functions parameters

func Functions_parameters() {
  var num = 10
  var ar = [1, 2]

  func printNumber(x: UnsafePointer<Int>) {
    x.memory
  }

  printNumber(&num)
  printNumber(ar)
//  printNumber(nil) //Crash
  
  func changeNumber(x: UnsafeMutablePointer<Int>) {
    x.memory = 9901
  }
  
  changeNumber(&num)
  changeNumber(&ar)
  //changeNumber(nil) Crash
  
  print(num)
  print(ar)

}

// Creating a pointer to existing variable

func CreatingPointers() {
  var num = 10
  var ar = [1, 2]
  
  let numPtr = UnsafeMutablePointer<Int>.initialize(&num)
  numPtr(10)
  print(num)
  
  let numArPtr = UnsafeMutablePointer<[Int]>.initialize(&ar)
  numArPtr([1])
  print(ar)
}

// Allocating memory for the pointer

func AllocatingPointerMemory() {
  
  let numberPtr = UnsafeMutablePointer<Int>.alloc(1)
  numberPtr.memory = 20
  print(numberPtr.memory)
  numberPtr.dealloc(1)
  
  var numbers = [1, 2, 3, 4]
  let numbersPtr = UnsafeMutablePointer.initializeFrom(&numbers)
  var newArr = [1, 2]
  numbersPtr(&newArr, count: 2)
  
  print(numbers)
}

private let count = 3_000_0
func CArrays() {

  measure("C Arrays") {
    let array = UnsafeMutablePointer<Int>.alloc(count)
    for i in 0..<count {
      array[i] = Int(arc4random())
    }

    // Sort
    for _ in 0..<count {
      for j in 0..<count - 1 {
        if array[j] > array[j + 1] {
          swap(&array[j], &array[j + 1])
        }
      }
    }
    array.dealloc(count)
  }
}

func SwiftArrays() {

  measure("Swift Arrays") {
    var array = Array(count: count, repeatedValue: 0)

    for i in 0..<count {
      array[i] = Int(arc4random())
    }

    // Sort
    for _ in 0..<count {
      for j in 0..<count - 1 {
        if array[j] > array[j + 1] {
          swap(&array[j], &array[j + 1])
        }
      }
    }
  }
}

func testArraysSpeed() {
  CArrays()
  SwiftArrays()
}
