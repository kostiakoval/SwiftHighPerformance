//
//  Constants-and-Variables.swift
//  Performance
//
//  Created by Kostiantyn Koval on 07/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

func testSimpleConstantSpeed() {
  
  measure("Let") {
    var result = 0
    for _ in 0...10000000 {
      let a = Int(arc4random())
      result += a
    }
    //print(result)
  }

  measure("Var") {
    var result = 0
    for _ in 0...10000000 {
      var a = Int(arc4random())
      result += a
    }
    //print(result)
  }
}

func testRandomConstantSpeed() {
  
  measure("Let") {
    var result = 0
    for _ in 0...100000000 {
      let a = Int(arc4random_uniform(10))
      let b = a + Int(arc4random_uniform(10))
      let c = b * Int(arc4random_uniform(10))      
      result += c
    }
    // print(result)
  }
  
  measure("Var") {
    var result: Int = 0
    for _ in 0...100000000 {
      var a = Int(arc4random_uniform(10))
      a += Int(arc4random_uniform(10))
      a *= Int(arc4random_uniform(10))      
      result += a
    }
    //print(result)
  }
}

//MARK:- Extra

func testManyConstantSpeed() {
  measure("Let") {
    var result = 0
    for _ in 0...10000000 {
      let a = Int(arc4random())
      let b = a / 2
      let c = b + 10
      let e = c + 4
      let f = e + 101
      let g = f * 4

      result += g
    }
    //print(result)
  }

  measure("Var") {
    var result = 0
    for _ in 0...10000000 {
      var a = Int(arc4random())
      a /= 2
      a += 10
      a += 4
      a += 101
      a *= 4

      result += a
    }
   // print(result)
  }
}

func testManyRandomConstantSpeed() {
  measure("Let") {
    var result = 0
    for _ in 0...100000000 {
      let a = Int(arc4random_uniform(10))
      let b = a + Int(arc4random_uniform(10))
      let c = b + Int(arc4random_uniform(10))
      let e = c * Int(arc4random_uniform(10))
      let f = e + Int(arc4random_uniform(10))
      let g = f * Int(arc4random_uniform(10))

      result += g
    }
   // print(result)
  }

  measure("Var") {
    var result: Int = 0
    for _ in 0...100000000 {
      var a = Int(arc4random_uniform(10))
      a += Int(arc4random_uniform(10))
      a += Int(arc4random_uniform(10))
      a *= Int(arc4random_uniform(10))
      a += Int(arc4random_uniform(10))
      a *= Int(arc4random_uniform(10))

      result += a
    }
    //print(result)
  }
}
