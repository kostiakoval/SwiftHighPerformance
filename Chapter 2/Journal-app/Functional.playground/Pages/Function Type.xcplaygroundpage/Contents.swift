//: ### Function Type

func hello() {
  print("Hello")
}

func add(x: Int, y: Int) -> Int {
  return x + y
}

func subtract(x: Int, y: Int) -> Int {
  return x - y
}

hello()             // () -> ()
add(10, y: 11)      // (Int, Int) -> Int
subtract(11, y: 10) // (Int, Int) -> Int

var hi: () -> () = hello
var mathOperation: (Int, Int) -> Int

mathOperation = add
mathOperation(10, 11)
mathOperation = subtract
mathOperation(10, 11)

hi()
//mathOperation = hello // Error, wrong types

//: Functions as a Type

// Pass a function as a parameter
func mathOperationCaller(f: (Int, Int) -> (Int), x: Int, y: Int) -> Int {
  return f(x, y)
}

// Return function
func multiply(factor: Int) -> (Int) -> Int {
  return { x in x * factor }
}

mathOperationCaller(add, x: 10, y: 11)
mathOperationCaller(-, x: 100, y: 30)

let factor10 = multiply(10)

factor10(2)
factor10(10)



//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
