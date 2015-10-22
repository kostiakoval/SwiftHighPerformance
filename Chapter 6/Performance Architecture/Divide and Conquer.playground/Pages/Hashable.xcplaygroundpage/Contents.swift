//: ### Hashable 

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

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
