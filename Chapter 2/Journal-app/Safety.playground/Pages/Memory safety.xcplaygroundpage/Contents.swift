//: ### Memory safefty

var y: Int
//y + 10 //Error, variable 'y' used before being initialized
y = 1
y + 10

/*
let x: Int
if y == 2 {
  x = 10
}
x + 10 // Error, variable 'x' used before being initialized
*/

let z: Int
if y == 2 {
  z = 10
} else {
  z = 0
}
z + 10

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

