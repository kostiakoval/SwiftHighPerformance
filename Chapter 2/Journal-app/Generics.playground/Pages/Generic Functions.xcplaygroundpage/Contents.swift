//: ### Generic Functions

func transform<T>(array: [T], transform: T -> T) -> [T] {
  
  var result = [T]()
  for element in array {
    result.append(transform(element))
  }
  return result
}

let numbers = [1, 2, 3]
let increasedNumbers  = transform(numbers) { $0 + 1}

let names = ["Jon", "Sara", "Sam"]
let formattedNames = transform(names) { "Name: " + $0 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)