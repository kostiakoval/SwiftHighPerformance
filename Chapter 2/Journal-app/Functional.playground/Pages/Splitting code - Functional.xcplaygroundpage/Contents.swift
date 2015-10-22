//: ### Splitting code - Functional

let numbers = [1, 2, 3]

func transform(array: [Int], f: Int -> Int) -> [Int] {
  
  var result = [Int]()
  for element in array {
    result.append(f(element))
  }
  return result
}

func double(x: Int) -> Int {
  return x * 2
}

func triple(x: Int) -> Int {
  return x * 3
}

transform(numbers, f: double)
transform(numbers, f: triple)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
