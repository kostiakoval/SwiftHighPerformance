//: ### Split Data and Functions

struct SalesData {
  let revenue: [Int]

  var average: Int {
    return revenue.reduce(0, combine: +) / revenue.count
  }
}

let data = SalesData(revenue: [145, 24, 3012])
data.average

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
