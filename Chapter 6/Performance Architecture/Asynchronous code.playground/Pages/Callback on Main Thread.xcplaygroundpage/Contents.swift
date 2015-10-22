//: ### Completion callback
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

extension SalesData {

  func calculateAverage(result: () -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {

      self.calculateItsAverage()

      dispatch_async(GCD.mainQueue()) {
        result()
      }
    }
  }
}

let data = SalesData(revenue: makeRandomArray(10))
data.calculateAverage {
  print(data.average)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
