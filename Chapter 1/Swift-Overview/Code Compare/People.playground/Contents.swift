struct Person {
  let name: String
  let age: Int
}

let people = [
  Person(name: "Sam", age: 10),
  Person(name: "Sara", age: 24),
  Person(name: "Ola", age: 42),
  Person(name: "Jon", age: 19)]

let kids = people.filter { person in person.age < 18 }
let names = people.map { $0.name.lowercaseString }
