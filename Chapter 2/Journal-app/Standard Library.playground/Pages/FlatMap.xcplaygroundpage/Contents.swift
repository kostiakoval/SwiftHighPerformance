//: ### FlatMap

let doubleArray = [[1, 2, 3], [5, 6, 7]]
let res = doubleArray.flatMap { $0 }
res

let twice = [1, 2, 3].flatMap { [$0, $0] }
twice

let nums = ["1", "Hi", "3"].flatMap { Int($0) }
nums

//: [TOC](TOC) | [Previous](@previous)
