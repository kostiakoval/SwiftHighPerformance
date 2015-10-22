//: ### Person and JournalEntry

import Foundation

class Person {
  var firstName: String
  var lastName: String
  
  init (firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class JournalEntry {
  var title: String
  var text: String
  var date: NSDate
  
  init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}
