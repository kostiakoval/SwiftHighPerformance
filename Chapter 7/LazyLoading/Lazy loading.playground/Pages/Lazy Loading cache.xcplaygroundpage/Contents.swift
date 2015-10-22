//: ### Lazy Loading cache

struct Person {
  let name: String
  let age: Int
  
  private var _healthData: HealthData?
  
  mutating func clearHealthData() {
    _healthData = nil
  }
  
  var healthData: HealthData {
    mutating get {
      _healthData = _healthData ?? HealthData()
      return _healthData!
    }
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
health = ola.healthData // HealthData created again 

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
