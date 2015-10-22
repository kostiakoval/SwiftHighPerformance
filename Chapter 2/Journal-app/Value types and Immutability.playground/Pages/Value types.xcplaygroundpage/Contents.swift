//: ### Value types

struct Person {
  var firstName: String
  var lastName: String
  var nickName: String
    
  func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }  
}

extension Person {
  init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
}

let person = Person(firstName: "Sam", lastName: "Jakson")
var a = person, b = person, c = person

//: Mutating a value instance data. The change is only made to that instance
a.firstName = "Jaky"
b.firstName // Sam
c.firstName // Sam

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
