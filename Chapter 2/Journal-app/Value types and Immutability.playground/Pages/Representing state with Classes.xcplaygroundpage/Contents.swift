//: ### Representing state with Classes

//: Value layer, use immutable valu types
struct Journal {
  let owner: Person
  var entries: [JournalEntry]
  
  mutating func addEntry(title: String, text: String) {
    let entry = JournalEntry(title: title, text: text)
    entries.append(entry)
  }
}

extension Journal {
  init(owner: Person) {
    self.owner = owner
    self.entries = []
  }
}

//: Object layer, use refernce type classes
class JournalController  {
  var journal: Journal
  
  init(owner: Person) {
    self.journal = Journal(owner: owner)
  }
  
  func addEntry(title: String, text: String) {
    journal.addEntry(title, text: text);
  }
}

let owner = Person(firstName: "Sam", lastName: "Nikelson")
let controller = JournalController(owner: owner)
controller.addEntry("I like reading", text: "I read a book today and i like that")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

