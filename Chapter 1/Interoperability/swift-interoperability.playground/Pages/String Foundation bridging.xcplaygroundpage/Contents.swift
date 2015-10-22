//: ### String Foundation bridging

//: For automatic bridging from `String` to `NSString`, `import Foundation` framework.  
//: Now it's possible to access all the methods of the `NSString` directly on `Swift String` type
import Foundation

var name: String = "Name"
name = name.stringByAppendingString(": Sara")
print(name.dynamicType)


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
