//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
//: Read more about XCPlayground here - [Documentation](https://developer.apple.com/library/ios/documentation/Swift/Reference/Playground_Ref/Chapters/XCPlayground.html "XCPlayground")

//:Capture Value

var x = 10
XCPCaptureValue("x", value: x)

x = 11
XCPCaptureValue("x", value: x)

for i in 0...100 {
  let r = arc4random_uniform(100)
  XCPCaptureValue("random", value: r)  
}

//: Show View

let view = UIView()
view.backgroundColor = .redColor()
view.frame = CGRect(x: 10, y: 10, width: 100, height: 100)
XCPShowView("View", view: view)


//:Indefinitely Execution

XCPSetExecutionShouldContinueIndefinitely()
XCPExecutionShouldContinueIndefinitely()
XCPSetExecutionShouldContinueIndefinitely(false)
XCPExecutionShouldContinueIndefinitely()

//: Shared Data

let dataPath = XCPSharedDataDirectoryPath
//Returns the path to the directory containing data shared between all playgrounds.
