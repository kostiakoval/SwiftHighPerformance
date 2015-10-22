//: ### GCD - Asynchronous Dispatch

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let queue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

dispatch_async(queue) {
  sleep(2)
  print("Task 1")
}
print("1 Submitted")

dispatch_async(queue) { print("Task 2") }
print("2 Submitted")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
