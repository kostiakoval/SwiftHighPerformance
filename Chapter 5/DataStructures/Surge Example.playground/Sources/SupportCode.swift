//
// This file (and all other Swift source files in the Sources directory of this playground) will be precompiled into a framework which is automatically made available to 3-Surge.playground.
//
import Foundation

public func makeRandomDoubleArray(count: Int) -> [Double] {

  var array = [Double]()
  array.reserveCapacity(count)
  for _ in 0...count  {
    array.append(Double(arc4random()))
  }
  return array
}
