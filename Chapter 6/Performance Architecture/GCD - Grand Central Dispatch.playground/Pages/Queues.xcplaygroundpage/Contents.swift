//: ### GCD - Queues

import Foundation
import XCPlayground
XCPSetExecutionShouldContinueIndefinitely()

//: Main Queue
let mainQueue = dispatch_get_main_queue()

//: Concurrent queues
dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)

/*:
It is recommended to use quality of service class values to identify the
well-known global concurrent queues:
- QOS_CLASS_USER_INTERACTIVE
- QOS_CLASS_USER_INITIATED
- QOS_CLASS_DEFAULT
- QOS_CLASS_UTILITY
- QOS_CLASS_BACKGROUND

The global concurrent queues may still be identified by their priority,
which map to the following QOS classes:
- DISPATCH_QUEUE_PRIORITY_HIGH:         QOS_CLASS_USER_INITIATED
- DISPATCH_QUEUE_PRIORITY_DEFAULT:      QOS_CLASS_DEFAULT
- DISPATCH_QUEUE_PRIORITY_LOW:          QOS_CLASS_UTILITY
- DISPATCH_QUEUE_PRIORITY_BACKGROUND:   QOS_CLASS_BACKGROUND
*/

//: Own Queues

let concurentQ = dispatch_queue_create("my-c", DISPATCH_QUEUE_CONCURRENT)
let serialQ = dispatch_queue_create("my-s", DISPATCH_QUEUE_SERIAL)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
