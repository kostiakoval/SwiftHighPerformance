//: ### Reference type

class Person {
  var firstName: String
  var lastName: String
  var nickName: String
  
  init (firstName: String, lastName: String, nickName: String) {
    self.firstName = firstName
    self.lastName = lastName
    self.nickName = nickName
  }
  
  convenience init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
  
  func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }  
}

let person = Person(firstName: "Sam", lastName: "Jakson")
let a = person, b = person, c = person

//: Mutating a reference instance data. The change is reflect everywhere.
a.firstName = "Jaky"
b.firstName // Jaky

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
