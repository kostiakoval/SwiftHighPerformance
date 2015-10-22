//: ### Objc - Swift Type bridging

import Foundation

//: Objective-C to Swift require type casting
//: * Downcasting  - `as?`
//: * Upcasting    - `as`

let objcArray: NSArray = [1, 2, 3]
let swiftArray: [AnyObject] = objcArray as [AnyObject]

if let safeNums = objcArray as? [Int] {
  safeNums.count
  safeNums[0] + 10
}

func doubleIt<T>(x: Array<T>) -> Array<T> {
  return x + x
}

doubleIt(swiftArray)
doubleIt(objcArray as [AnyObject])
doubleIt(objcArray as? [Int] ?? [])

//: Strings

let string: NSString = "Hi"
let str: String = string as String

func doubleIt(x: String) -> String {
  return x + x
}

doubleIt(str)
doubleIt(string as String)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
