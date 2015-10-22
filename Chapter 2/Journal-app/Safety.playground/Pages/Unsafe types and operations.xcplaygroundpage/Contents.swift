//: ### Unsafe types and operations

let pointer = UnsafeMutablePointer<Int>.alloc(1)
pointer.memory = 10
pointer.memory
pointer.dealloc(1)

// Accessing Array elements

let numbers = [1, 2, 3]

numbers.count
numbers[1]
//numbers[10] //Crash

if numbers.count > 10 {
  numbers[10]
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
