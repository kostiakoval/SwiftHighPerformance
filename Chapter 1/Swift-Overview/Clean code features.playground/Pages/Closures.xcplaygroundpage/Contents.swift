//: ### Clean closures syntax

let add10 = { $0 + 10 }
add10(5)

let numbers = [1, 2, 3, 4]
numbers.map { $0 + 10 }
numbers.map(add10)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
