//: ### Immutable State
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

class SalesData {
  let revenue: [Int] // Made it immutable !!!
  var average: Int?

  init (revenue: [Int]) {
    self.revenue = revenue
  }
}

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {

      var sum = 0
      for index in self.revenue.indices {
        sum += self.revenue[index]
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

// Not Possible to mutate revenue.
//data.revenue.removeAll(keepCapacity: false)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
