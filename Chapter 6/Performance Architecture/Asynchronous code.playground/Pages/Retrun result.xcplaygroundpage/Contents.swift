//: ### Retrun result
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {

      self.calculateItsAverage()

      dispatch_async(GCD.mainQueue()) {
        result(self.average)
      }
    }
  }
}

let data = SalesData(revenue: makeRandomArray(10))
data.calculateAverage { average in
  print(average)
}

//: [TOC](TOC) | [Previous](@previous)
