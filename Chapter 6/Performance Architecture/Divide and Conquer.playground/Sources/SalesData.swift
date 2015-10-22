public struct SalesData {
  public let revenue: [Int]
  
  public var average: Int {
    return revenue.reduce(0, combine: +) / revenue.count
  }
  
  public init(revenue: [Int]) {
    self.revenue = revenue
  }
}
