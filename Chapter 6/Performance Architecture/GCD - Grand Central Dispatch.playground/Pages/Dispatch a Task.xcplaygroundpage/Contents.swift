//: ### GCD - Dispatch a Task

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let queue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

//: Closure
dispatch_sync(queue) { print("Task 1") }

//: Closure variable

let tasks: dispatch_block_t = {
  print("do Work")
}

dispatch_sync(queue, tasks)

// Function

func doWork() {
  print("do Work Function")
}

dispatch_sync(queue, doWork)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
