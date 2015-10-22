//: ### Global variables

struct Person {
  let name: String
  let age: Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
    print("\(name) Created")
  }
}

let Jon = Person(name: "Jon", age: 20)
let Sam = Person(name: "Sam", age: 28)

// Very dangerouse!!!

var Sara = Person(name: "Sara", age: 16)
Sara = Person(name: "Sam", age: 20)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
