//: ### Using constant instead of a variable

let person = Person(firstName: "Jon", lastName: "Bosh")
let man = true

let gender: String = man ? "Mr": "Mrs"
let fullName = "\(gender) \(person.firstName) \(person.lastName)"

//: [TOC](TOC) | [Previous](@previous)
