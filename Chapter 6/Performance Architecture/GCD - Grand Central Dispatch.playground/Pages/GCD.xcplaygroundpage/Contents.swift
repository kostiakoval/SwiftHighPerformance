//: ### GCD -  Inroduction

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

let bgQueue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

dispatch_async(bgQueue) {
  print("run")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
