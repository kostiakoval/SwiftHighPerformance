//: ### NSOperationQueue

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let queue = NSOperationQueue()
queue.addOperationWithBlock {
  print("Some task")
}

NSOperationQueue.mainQueue().addOperationWithBlock {
  print("Some task")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
