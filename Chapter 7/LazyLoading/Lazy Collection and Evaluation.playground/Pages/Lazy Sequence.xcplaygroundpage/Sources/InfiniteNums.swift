
public struct InfiniteNums: SequenceType {
  public init() { }
  
  public  func generate() -> AnyGenerator<Int> {
    var num = 0
    return anyGenerator {
      print("gen \(num)")
      return num++
    }
  }
}
