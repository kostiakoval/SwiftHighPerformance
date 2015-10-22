//: ### Type safety

func incease(x: Int) -> Int {
  return x + 1
}

let x = 10
let percent = 0.3
let name = "Sara"

//x + name // Can't apply + operator for Int and String
//x * percent // Can't appy * to Int and Double
Double(x) * percent // 3

incease(x) // 11
//incease(percent) // Wrong type
//incease(name) // Wrong type

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
