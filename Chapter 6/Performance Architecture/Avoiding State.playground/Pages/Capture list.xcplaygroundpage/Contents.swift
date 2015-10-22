//: ### Capture list
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) { [revenue] in

      var sum = 0
      for index in revenue.indices {
        sum += revenue[index]
      }

      self.average = sum / revenue.count

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
