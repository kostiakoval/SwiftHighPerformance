//: ### Type safe

let number = 10
let part = 1.5

//: Error, can't add `Int` and `Double` types.
//number + part;

let result = Double(number) + part

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
