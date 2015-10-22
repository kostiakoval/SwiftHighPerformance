//: ### Map

func double(x: Int) -> Int {
  return x * 2
}

let numbers = [1, 2, 3]

numbers.map(double)
numbers.map { $0 * 2 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)