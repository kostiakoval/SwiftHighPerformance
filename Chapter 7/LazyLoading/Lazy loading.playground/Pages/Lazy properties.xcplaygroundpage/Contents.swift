//: ### Lazy properties

struct HealthData {
  init() { 
    print("HealthData Created") 
  }
}

struct Person {
  let name: String
  let age: Int
  
  lazy var healthData = HealthData()
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
    print("\(name) Created")
  }
}

let ola = Person(name: "Ola", age: 27)
//let health = ola.healthData // Error! It’s mutating a value

var bobby = Person(name: "Bobby ", age: 5)
let bobbyHealth = bobby.healthData // Works fine

class SomeClass {
  lazy var healthData = HealthData()
}

let someClass = SomeClass()
someClass.healthData // Works fine because class is a reference type


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
