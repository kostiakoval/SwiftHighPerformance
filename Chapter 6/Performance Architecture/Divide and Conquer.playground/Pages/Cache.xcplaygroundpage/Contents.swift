//: ### Cache
import Foundation

//: Error, SalesData needs to be Hashable
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

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
