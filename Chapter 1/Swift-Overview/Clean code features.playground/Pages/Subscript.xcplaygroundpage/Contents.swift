//: ### Subscripts

//: Array subscript
let numbers = [1, 2, 3, 4]
let num2 = numbers[2]

//: Dictionary subscript
let population = [
  "China" : 1_370_940_000,
  "Australia" : 23_830_900
]

population["Australia"]

//: Custom type subscript
struct Stack {
  private var items: [Int]
  
  subscript (index: Int) -> Int {
    return items[index]
  }
  
  // Stack standard functions
  mutating func push(item: Int) {
    items.append(item)
  }
  
  mutating func pop() -> Int {
    return items.removeLast()
  }
}

var stack = Stack(items: [10, 2])
stack.push(6)
stack[2]
stack.pop()

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
