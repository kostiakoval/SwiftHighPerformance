//
//  main.swift
//  Performance-Examples
//
//  Created by Kostiantyn Koval on 15/08/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

// -- Constants and Variables

testSimpleConstantSpeed()
testRandomConstantSpeed()

// -- Methods calls

let dog = Dog.self
dog.bark()

// Obj-c vs Swift methods speed 
// Check out "Methods Speed" Project

// - Functions and Methods
functionsAndMethods()

// --- Comparing Functions speed
testDifferentMethods()

// --- Intelligent code

let object = Object()
object.nothing()
object.nothing()

for i in 0...1_000_000 {
  let object = Object2(x: i)
  object.nothing()
  object.nothing()
}

// --- Dangerous function

// Console Print
for i in 0...1_000_000 {
  print(i)
}

for i in 0...1_000_000 {
  debugPrint(i)
}

for i in 0...1_000 {
  let object = Object3(x: i)
  object.nothing()
  object.nothing()
}

for i in 0...1_000_000 {
  D_print(i)
}

// Using non optimizable constant

let o = Optimizable()
let st = NotOptimizableSt()

// --- Improving Speed
//Improving-Speed.swift

// - use Final
// - inline function


// --- Value objects and Reference objects
create_ValueAndReference()
measure_ValueAndReference()

// --- Arrays and Unsafe C

Functions_parameters()
CreatingPointers()
AllocatingPointerMemory()

testArraysSpeed()

// --- Avoiding Objective-C
testObjcInSwift()
