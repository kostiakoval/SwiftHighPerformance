import Foundation

public func makeRandomSet(count: Int) -> Set<Int> {
  
  var set = Set<Int>(minimumCapacity: count)
  for _ in 0...count  {
    set.insert(Int(arc4random_uniform(100)))
  }
  return set
}

public func makeRandomArray(count: Int) -> [Int] {
  
  var array = [Int]()
  array.reserveCapacity(count)
  for _ in 0...count  {
    array.append(random())
  }
  return array
}

