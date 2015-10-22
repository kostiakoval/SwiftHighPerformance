//: ### Reference Self
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

//: This code Requires you to explicitly reference Self.  
//: Xcode show you an error and suggest how to fix it

extension SalesData {

  func calculateAverage(result: (Int?) -> Void ) {

    let queue = GCD.backgroundQueue()
    dispatch_async(queue) {

      let sum = revenue.reduce(0, combine: +)
      average = sum / revenue.count

      dispatch_async(GCD.mainQueue()) {
        result(average)
      }
    }
  }
}

let data = SalesData(revenue: makeRandomArray(10))
data.calculateAverage { average in
  print(average)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
