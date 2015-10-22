//: ### Map Lazy

let numbers = Array(1...1_0) 
let lazyNumbers = numbers.lazy
let doubledNumbers = lazyNumbers.map { $0 * 2 }
doubledNumbers.last

let lazyNumbers2 = LazyCollection(numbers)
let doubledNumbers2 = lazyNumbers.map { $0 * 2 }
doubledNumbers2.last

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
