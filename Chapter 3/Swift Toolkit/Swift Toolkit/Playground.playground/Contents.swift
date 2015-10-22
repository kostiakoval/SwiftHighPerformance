//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let numbers = [1, 2, 3, 4]
let even = numbers.filter { $0 % 2 == 0 }
even
even.count
for num in even {
  print(num)
}

numbers.map { $0 + Int(arc4random()) }
