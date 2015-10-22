//: ### Asynchronous code
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

class SalesData {

  var revenue: [Int]
  var average: Int?

  init (revenue: [Int]) {
    self.revenue = revenue
  }

  func calculateItsAverage() {
    var sum = 0
    for index in self.revenue.indices {
      sum += self.revenue[index]
    }

    self.average = sum / self.revenue.count
  }
}

extension SalesData {
  func calculateAverage() {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {
      self.calculateItsAverage()

      //  For better readability we reuse calculate Its Average in examples
      /*
      var sum = 0
      for index in self.revenue.indices {
        sum += self.revenue[index]
      }

      self.average = sum / self.revenue.count
      */

    }
  }
}

let data = SalesData(revenue: makeRandomArray(10))
data.revenue
data.calculateAverage()
print(data.average)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
