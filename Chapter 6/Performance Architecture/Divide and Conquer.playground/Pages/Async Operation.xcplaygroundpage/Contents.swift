//: ### Async Operation
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

struct AsyncOperation {
  
  static func calculateAverage(data: SalesData, result: (Int) -> Void ) {
    GCD.asyncOnBackground {
      let average = data.average
      GCD.asyncOnMain {
        result(average)
      }
    }
  }
}

let data = SalesData(revenue: [145, 24, 3012])
AsyncOperation.calculateAverage(data) { average in 
  print(average)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
