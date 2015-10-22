//
//  JournalEntry.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 07/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

struct JournalEntry {
  let title: String
  let text: String
  let date: NSDate

  var location: Location?
  let type: JournalEntryType

  init (title: String, text: String, type: JournalEntryType) {
    self.title = title
    self.text = text
    self.type = type
    date = NSDate()
  }

  init (title: String, text: String) {
    self.init(title: title, text: text, type: .Note)
  }
}

enum JournalEntryType {
  case Note
  case Story
}

struct Location {
  let latitude: Double
  let longitude: Double
}

// MARK: - Comparable
extension JournalEntry : Comparable {
}

func == (lhs: JournalEntry, rhs: JournalEntry) -> Bool {

  return lhs.title == rhs.title &&
    lhs.text == rhs.text &&
    lhs.date == rhs.date &&
    lhs.type == rhs.type
}

func <(lhs: JournalEntry, rhs: JournalEntry) -> Bool {
  return lhs.text < rhs.text
}
