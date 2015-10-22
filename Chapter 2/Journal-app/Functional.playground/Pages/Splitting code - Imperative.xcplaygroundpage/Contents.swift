//: ### Splitting code - Imperative

let numbers = [1, 2, 3]

func doubleNumbers(array: [Int]) -> [Int] {
  var result = [Int]()
  for element in array {
    result.append(element * 2)
  }
  return result
}

let resut = doubleNumbers(numbers)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
