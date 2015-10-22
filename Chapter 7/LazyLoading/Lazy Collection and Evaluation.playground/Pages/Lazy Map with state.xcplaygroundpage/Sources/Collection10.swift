public struct Collection10: CollectionType {
  public init() { }
  
  var data = Array(1...10)
  
  public var startIndex: Int {
    return data.startIndex
  }
  
  public var endIndex: Int {
    return data.endIndex
  }
  
  public subscript (position: Int) -> Int {
    print("Pos \(position)")
    return data[position]
  }
  
  public func generate() -> AnyGenerator<Int> {
    var index = 0
    
    return anyGenerator {
      print("Col index: \(index)")
      let next: Int? = index < self.endIndex ? self.data[index++] : nil
      return next
    }
  }
}
