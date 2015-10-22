//
// This file (and all other Swift source files in the Sources directory of this playground) will be precompiled into a framework which is automatically made available to 5_1_Generics.playground.
//
/*
import Foundation

public struct JournalEntry {
  public let title: String
  public let text: String
  public let date: NSDate

  var location: Location?
  
  public init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}

public struct Location {
  let latitude: Double
  let longitude: Double

  public init( latitude: Double, longitude: Double) {
    self.latitude = latitude
    self.longitude = longitude
  }
}

// MARK: - Comparable
extension JournalEntry : Comparable {
}

public func == (lhs: JournalEntry, rhs: JournalEntry) -> Bool {

  return lhs.title == rhs.title &&
    lhs.text == rhs.text &&
    lhs.date == rhs.date
}

public func < (lhs: JournalEntry, rhs: JournalEntry) -> Bool {
  return lhs.text < rhs.text
}
*/
