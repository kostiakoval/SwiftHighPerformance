//: ### Custom Generic type

struct Stack<T> {
  private var items: [T]
  
  mutating func push(item: T) {
    items.append(item)
  }
  
  mutating func pop() -> T {
    return items.removeLast()
  }
  
  init() {
    items = []
  }
}

var s = Stack<Int>()
s.push(10)
s.push(4)
//s.push("Name") // Error
s.pop()
s

//: [TOC](TOC) | [Previous](@previous)
