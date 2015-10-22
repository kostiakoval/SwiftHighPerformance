//: ### Split calculation and Async
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

struct AsyncOperation {
  
  static func calculateAverage(data: SalesData, result: (Int) -> Void ) {
    runAsync(data.average, result: result)
  }
  
//MARK: - Private
  private static func runAsync<T>(@autoclosure(escaping) work: () -> T, result: (T) -> Void ) {
    GCD.asyncOnBackground {
      let x = work()
      GCD.asyncOnMain {
        result(x)
      }
    }
  }
}

let data = SalesData(revenue: [145, 24, 3012])
AsyncOperation.calculateAverage(data) { average in 
  print(average)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
