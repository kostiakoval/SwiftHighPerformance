import Foundation

public func makeRandomArray(count: Int) -> [Int] {

  var array = [Int](count: count, repeatedValue: 0)
  for i in 0..<count  {
    array[i] = Int(arc4random())
  }
  return array
}

