//: ### Computed properties

struct Person {
  let name: String
  let lastName: String
  let age: Int
  
  var fullName: String {
    print("calculating fullName")
    return "\(name) \(lastName)"
  }
}

var jack = Person(name: "Jack", lastName: "Samuel", age: 21)
print(jack.fullName)
print(jack.fullName)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
