//: ### Threads
import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

//A starting point for a new thread
class Handler: NSObject {
  @objc class func run() {
    print("run")
  }

  @objc func runMe() {
    print("runMe")
  }
}

let handler = Handler()

//: Detach New Thread

NSThread.detachNewThreadSelector("run", toTarget: Handler.self, withObject: nil)
NSThread.detachNewThreadSelector("runMe", toTarget: handler, withObject: nil)

//: Create New Thread

let thread = NSThread(target: Handler.self, selector: "run", object: nil)
thread.start()

let thread2 = NSThread(target: handler, selector: "runMe", object: nil)
thread2.start()

//: Perform Selector

Handler.performSelectorInBackground("run", withObject: nil)
handler.performSelectorInBackground("runMe", withObject: nil)

Handler.performSelectorOnMainThread("run", withObject: nil, waitUntilDone: false)
handler.performSelectorOnMainThread("runMe", withObject: nil, waitUntilDone: false)

//: Custom Thread subclass

class MyWorker: NSThread {

  override func main() {
    print("Do work here")
  }
}

let worker = MyWorker()
worker.start()



