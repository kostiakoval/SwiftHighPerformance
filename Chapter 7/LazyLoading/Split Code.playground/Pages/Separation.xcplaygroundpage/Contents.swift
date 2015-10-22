//: ### Separation

struct Person {
  let name: String
  let age: Int
}

func analyze(people: [Person]) {
  
  let names = people.map { $0.name }
  analyzeNames(names)
  
  let age = people.map { $0.age }
  analyzeAge(age)
}

func analyzeNames(names: [String]) {
  let last = names.maxElement()!
  let alphabetOrder = names.sort { $0 > $1 }
  let lengthOrder = names.sort { $0.characters.count < $1.characters.count }
  let longestName = lengthOrder.last
  print(last, alphabetOrder, lengthOrder, longestName)
}

func analyzeAge(age: [Int]) {
  let youngest = age.minElement()!
  let oldest = age.maxElement()!
  let average = age.reduce(0, combine: +) / age.count
  print(youngest, oldest, average)
}

let people = [Person(name: "Sam", age: 3),
  Person(name: "Lisa", age: 68),
  Person(name: "Jesse", age: 35),
]

//people + EnglandPopulation()
analyze(people)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
