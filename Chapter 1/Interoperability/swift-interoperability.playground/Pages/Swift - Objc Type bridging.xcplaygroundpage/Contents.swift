//: ### Swift - Objc Type bridging

import Foundation

//: Free bridging from Swift to Objective-C types,  
//: `Array<T> -> NSArray`  
//: `String  -> NSString`

let array = [1, 2, 3]
array.count

func takeArray(array: NSArray) {
  let result = array.arrayByAddingObject(1)
  print(array.dynamicType)
  print(result)
}

let objcArray: NSArray = array
takeArray(array)

//: String

let str = "Hi Swift"
let string: NSString = str

func takeString(x: NSString) {
  print(x)
}
takeString(str)
takeString(string)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
