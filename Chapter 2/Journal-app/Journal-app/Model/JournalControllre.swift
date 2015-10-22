//
//  JournalControllre.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 23/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

class JournalController  {
  var journal: Journal

  init(owner: Person) {
    self.journal = Journal(owner: owner)
  }

  func addEntry(title: String, text: String) {
    journal.addEntry(title, text: text);
  }
}
