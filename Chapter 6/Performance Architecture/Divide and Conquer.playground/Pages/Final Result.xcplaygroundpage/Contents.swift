//: ### Final Result
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

struct SalesData {
  let id: Int
  let revenue: [Int]
  
  var average: Int {
    return revenue.reduce(0, combine: +) / revenue.count
  }
}

//MARK:- Hashable
extension SalesData: Hashable {
  var hashValue: Int {
    return id.hashValue
  }
}

func == (lhs: SalesData, rhs: SalesData) -> Bool {
  return lhs.id == rhs.id
}

//: Async Operation

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

//: Cache 

struct SalesDataCache {
  private var revenueCache = [SalesData : Int]()
  
  subscript (data: SalesData) -> Int? {
    return revenueCache[data]
  }
  
  mutating func getAverage(data: SalesData, result: (Int) -> Void) {
    if let average = self[data] {
      result(average)
    } else {
      AsyncOperation.calculateAverage(data) { average in
        self.revenueCache[data] = average
        result(average)
      }
    }
  }
}

//: Use Example 

let range = 0...10
var cache = SalesDataCache()
let salesData = range.map {
  SalesData(id: $0, revenue: makeRandomArray(1000))
}

for data in salesData {
  cache.getAverage(data) { average in
    print(average)
  }
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
