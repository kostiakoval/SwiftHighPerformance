//
//  main.swift
//  Swift-methods
//
//  Created by Kostiantyn Koval on 15/08/15.
//
//

import Foundation

func methodCallSpeed() {
  
  let number = Number()
  measure("Sum", times: 20) {
    var result: Int = 0
    for i in 0...1000000000 {
      result += number.add(i, y: i + 1)
    }
    print(result)
  }
}

methodCallSpeed()
