//
//  Joural.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 09/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

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
