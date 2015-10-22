//: ### Optional Lazy properties

struct Person {
  let name: String
  let age: Int
  
  lazy var healthData: HealthData? = HealthData()
  
  mutating func clearHealthData() {
    healthData = nil
  }
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
    print("\(name) Created")
  }
}

var ola = Person(name: "Ola", age: 27)
var health = ola.healthData //Get lazy loaded here
ola.clearHealthData() 
health = ola.healthData // nil, nothing happens here.

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
