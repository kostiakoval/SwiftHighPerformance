//
// This file (and all other Swift source files in the Sources directory of this playground) will be precompiled into a framework which is automatically made available to 1.5-Logs.playground.
//

import QuartzCore

public func measure(call: () -> Void) {
  let startTime = CACurrentMediaTime()
  call()
  let endTime = CACurrentMediaTime()

  print("Time - \(endTime - startTime)")
}
