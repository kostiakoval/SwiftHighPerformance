//: ### Type properties

struct Person {
  let name: String
  let age: Int
  
  static let Jon = Person(name: "Jon", age: 20)
  static let Sam = Person(name: "Sam", age: 20)
}

class Animal {
  let name: String
  let type: String
  
  init (name: String, type: String) {
    self.name = name
    self.type = type
  }
  
  static let Dog = Animal(name: "Rowdy", type: "Dog")
  static let Car = Animal(name: "Percy", type: "Cat")
}

print("Age: \(Person.Jon.age)")
print("Age: \(Person.Sam.age)")


//can't mutate a constant
//Animal.Car = Animal(name: "Rowdy", type: "Dog")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
