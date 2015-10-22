//: ### Closures

func transform(array: [Int], f: Int -> Int) -> [Int] {
  
  var result = [Int]()
  for element in array {
    result.append(f(element))
  }
  return result
}

let numbers = [1, 2, 3]

transform(numbers, f: { (x: Int) -> Int in
  return x * 2
})

//Type Inference
transform(numbers, f: { x in
  return x * 2
})

// Implicit return type for sigle expression closures
transform(numbers, f: { x in x * 2 })

transform(numbers, f: { x in
  let result = x * 2
  return result + 10
})

// Shorthand argument names
transform(numbers, f: { $0 * 2 })

transform(numbers, f: {
  let x = $0 * 2 + $0
  var a = x + $0
  return a
})

//: Trailing closure
transform(numbers) { $0 * 2 }
transform(numbers) { x in x * 2 }

func map(function: Int -> Int) -> [Int] {
  //... Body
  return []
}

map() { $0 + 1 }
map { $0 + 1 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
