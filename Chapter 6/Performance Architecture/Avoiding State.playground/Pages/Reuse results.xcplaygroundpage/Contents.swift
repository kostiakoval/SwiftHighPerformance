//: ### Reuse results
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

class SalesData {
  let revenue: [Int]
  var average: Int?

  init (revenue: [Int]) {
    self.revenue = revenue
  }
}

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    //Reuse calculated average result
    if let average = self.average {
      print("Return cashed result")
      result(average)
    } else {

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
}

let data = SalesData(revenue: makeRandomArray(10))
data.calculateAverage { average in
  print(average)

  data.calculateAverage { average in
    print(average)
  }
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
