//: ### GCD - Extra

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

/// Some Extra Func
  
let mainQueue = dispatch_get_main_queue()
let bgQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0)
let group = dispatch_group_create();

dispatch_group_async(group, bgQueue) {
  for i in 0...100 {
    print("Group 1 \(i)")
  }
}

dispatch_group_async(group, bgQueue) {
  for i in 0...100 {
    print("Group 2 \(i)")
  }
}

dispatch_group_notify(group, bgQueue) {
  print("Final Done")
}

dispatch_group_wait(group, DISPATCH_TIME_FOREVER) 
print("I'm wating. Done")

//: [TOC](TOC) | [Previous](@previous)
