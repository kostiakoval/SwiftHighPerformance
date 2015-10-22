//: ### GCD - Taks

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let tasks: dispatch_block_t = {
  print("do Work")
}

func doWork() {
  print("do Work Function")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
