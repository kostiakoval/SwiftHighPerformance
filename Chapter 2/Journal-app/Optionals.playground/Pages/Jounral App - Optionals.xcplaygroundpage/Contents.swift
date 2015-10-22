//: ### Jounral App - Optionals

import Foundation

struct Location {
  let latitude: Double
  let longitude: Double
}

struct JournalEntry {
  let title: String
  let text: String
  let date: NSDate
  
  var location: Location?
  
  init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}

//Using
var entry = JournalEntry(title: "Walking", text: "I was walking in the loop")
entry.location = Location(latitude: 37.331686, longitude: -122.030656)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
