//: ### Structures

struct Person {
  let name: String
  let lastName: String
  
  func fullName() -> String {
    return name + " " + lastName
  }
}

let sara = Person(name: "Sara", lastName: "Johan")
sara.fullName()

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

