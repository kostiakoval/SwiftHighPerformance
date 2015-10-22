public class SalesData {

  public var revenue: [Int]
  public var average: Int?

  public init (revenue: [Int]) {
    self.revenue = revenue
  }

  public func calculateItsAverage() {
    var sum = 0
    for index in self.revenue.indices {
      sum += self.revenue[index]
    }

    self.average = sum / self.revenue.count
  }
}
