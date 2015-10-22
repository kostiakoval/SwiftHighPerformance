//: ### Person and JournalEntry

import Foundation

class Person {
  let firstName: String
  let lastName: String
  
  init (firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class JournalEntry {
  let  title: String
  let text: String
  let date: NSDate
  
  init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)