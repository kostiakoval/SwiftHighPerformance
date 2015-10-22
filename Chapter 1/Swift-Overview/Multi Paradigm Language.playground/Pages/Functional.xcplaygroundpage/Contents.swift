//: ### Functional

let numbers = [1, 2, 4]

func isEven (x: Int) -> Bool {
  return x % 2 == 0
}

let res = numbers.filter(isEven)

//: Closures and function are interchangeable.  
//: A Closure can be used insted of a function and vice-versa

let res1 = numbers.filter(isEven)
let res2 = numbers.filter { $0 % 2 == 0 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
