//: ### Using Variables - wrong example

let person = Person(firstName: "Jon", lastName: "Bosh")
let man = true

var fullName: String
if man {
  fullName = "Mr "
} else {
  fullName = "Mrs "
}

fullName += person.firstName
fullName += " "
fullName += person.lastName

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
