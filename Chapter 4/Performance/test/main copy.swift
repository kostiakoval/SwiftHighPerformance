//
//  main.swift
//  test
//
//  Created by Kostiantyn Koval on 09/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

//import Foundation

func testDog() {
  Dog.bark()
  BigDog.bark()
  
  Dog.speak()
  BigDog.speak()
  
  let dog = getDog()
  dog.bark()
  dog.speak()
  
  
  var someDog = Dog()
  someDog.changeName("Cocoa")
  
  someDog = BigDog()
  someDog.changeName("Lambda")
}

func differentMethods() {
  
  NumOperation.addC(1, y: 1)
  NumOperation.addS(2, y: 2)
  
  let num = NumOperation()
  num.addI(3, y: 3)
  
  BigNumOperation.addC(1, y: 1)
  BigNumOperation.addS(2, y: 2)
  
  let bigNum = BigNumOperation()
  num.addI(3, y: 3)
  
  let rr = add(5, y: 5)
  print(rr)
}


/// intelligent Code

func intelligentCode() {
  
  let object = Object()
  object.nothing()
  object.nothing()
}

func intelligentCode_Loop() {
  
  for i in 0...1_000 {
    let object = Object3(x: i)
    object.nothing()
    object.nothing()
  }
}


func intelligentCode_Logs() {
  
  measure("Loop", times: 2) {
    for i in 0...1_000_000 {
      D_print(i)
    }
  }
}

func dangerousConstants() {
  let o = Optimizable()
  let st = NotOptimizableSt()
  
  //let cl = NotOptimizableC()
  //let nclass = OptimizableClass()
}

func structsAndClasses()  {
  measure_ValueAndReference()
}



/// Main Code
/*
create_ValueAndReference()
intelligentCode()
intelligentCode_Loop()
intelligentCode_Logs()
dangerousConstants()


structsAndClasses()
testArraysSpeed()


testObjcInSwift()
testDifferentMethods()
*/


//testDifferentMethods()

//D_print("debug Print")


//-------------------------

// Optimized Code for Loop with Object3
func optimizedCode() {
  
  var x = 0, y = 0, z = 0
  for i in 0...1_000 {
    
    x = i
    y = x * 2
    z = y * 2
    
    print(x + y + z)
    print(x + y + z)
  }
}
