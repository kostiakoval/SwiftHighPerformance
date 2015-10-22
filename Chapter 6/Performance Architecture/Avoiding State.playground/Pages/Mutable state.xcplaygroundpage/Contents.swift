//: ### Mutable state
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {

      var sum = 0
      for index in self.revenue.indices {
        sum += self.revenue[index]
        // fatal error: Array index out of range
      }

      self.average = sum / self.revenue.count

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
data.revenue.removeAll(keepCapacity: false)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
