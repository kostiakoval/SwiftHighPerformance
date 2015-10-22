//: ### GCD - Synchronous Dispatch

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let queue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

dispatch_sync(queue) { print("Task 1") }
print("1 Done")

dispatch_sync(queue) { print("Task 2") }
print("2 Done")

//: Dangerous Deadlock

func dangerous(queue:  dispatch_queue_t) {
  dispatch_sync(queue) {
    print("Enter")

    dispatch_sync(queue) {
      print("Never called") // Don’t do this
    }

    print("Never leave") // Don’t do this
  }
}

let serialQ = dispatch_queue_create("my-s", DISPATCH_QUEUE_SERIAL)

dangerous(queue)
//dangerous(serialQ) // Very dangerous deadlock!! 


//Wait testing

dispatch_sync(queue) {
  sleep(5)
  print("Task 1")
}
print("1 Done")

dispatch_sync(queue) { print("Task 2") }
print("2 Done")


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
