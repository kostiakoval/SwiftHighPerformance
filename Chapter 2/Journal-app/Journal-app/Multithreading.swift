//
//  Threads.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 12/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

class DangerousWorker {
  var entries: [JournalEntry]

  init() {
    //Add test entries
    let entry = JournalEntry(title: "Walking", text: "I was walking in the loop")
    entries = Array(count: 100, repeatedValue: entry)
  }

  func dangerousMultithreading() {

    //Background Work
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
      sleep(1)
      print("In Background")
      self.entries.removeAll()
    }

    //Main Thread
    print("Start Main")
    for _ in 0..<entries.endIndex {
      entries.removeLast() //Crash
      sleep(1) //emulate work
    }
    print("End Main")
  }
}

class SafeWorker {
  let entries: [JournalEntry]

  init() {
    let entry = JournalEntry(title: "Walking", text: "I was walking in on the loop")
    entries = Array(count: 100, repeatedValue: entry)
  }

  func safeMultithreading() {

    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)) {
      print("In Background")
      for entry in self.entries {
        print("\(entry) in BG")
      }
    }

    print("Start Main")
    for entry in self.entries {
      print("\(entry) in Main")
    }
    print("End Main")
  }
}
