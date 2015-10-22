//: Playground - noun: a place where people can play

import Foundation
import Accelerate

let array = [1.0, 2.0]
let result = array.map { $0 + 3.0 }
result

let sum = array.reduce(0, combine: +)
sum

// vDSP Version
var result1 = [Double](count: array.count, repeatedValue: 0.0)

var add = 3.0
vDSP_vsaddD(array, 1, &add, &result1, 1, vDSP_Length(array.count))
result

var sum1 = 0.0
vDSP_sveD(array, 1, &sum1, vDSP_Length(array.count))
sum



