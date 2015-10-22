//: ### Operators

//: Standard Operators
let numbers = [1, 2, 3, 4]
let array = [1, 2, 3]
let res = array + numbers

//: Custom Operators
struct Vector {
  let x: Int
  let y: Int
}

func + (lhs: Vector, rhs: Vector) -> Vector {
  return Vector(x: lhs.x + rhs.x, y: lhs.y + rhs.y);
}

let a = Vector(x: 10, y: 5)
let b = Vector(x: 2, y: 3)

let c = a + b

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
