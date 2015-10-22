//
//  Struct-vs-Class.swift
//  Performance
//
//  Created by Kostiantyn Koval on 11/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

struct NumberValue : CustomStringConvertible {
  let x: Int

  var description: String  {
    return "NumberValue: \(x)"
  }
}

class NumberReference: CustomStringConvertible {
  let x: Int
  init(x: Int) {
    self.x = x
  }

  var description: String  {
    return "NumberReference: \(x)"
  }
}

@inline(never) func create_ValueAndReference() {

  var x = NumberValue(x: 1)
  var xres = x.x
  x = NumberValue(x: 2)
  xres += x.x
  print("Ref")

  var y = NumberReference(x: 10)
  var yres = y.x
  y = NumberReference(x: 20)
  yres += y.x

  print(x)
  print(xres)

  print("Ref res")
  print(y.x)
  print(y)
  print(yres)
}

@inline(never) func measure_ValueAndReference()  {

  measure {
    var result = NumberValue(x: 0)
    for i in 0...1_000_000_00 {
      let x = NumberValue(x: result.x + i)
      result = x
    }
    print(result)
  }

  measure {
    var refResult = NumberReference(x: 0)
    for i in 0...1_000_000_00 {
      let x = NumberReference(x: refResult.x + i)
      refResult = x
    }
    print(refResult)
  }
}

// With random numbers to disable
@inline(never) func measure_ValueAndReference_randomNumbers()  {
  
  measure {
    var result = NumberValue(x: 0)
    for i in 0...1_000_000_00 {
      let x = NumberValue(x: result.x + i + random())
      result = x
    }
    print(result)
  }
  
  measure {
    var refResult = NumberReference(x: 0)
    for i in 0...1_000_000_00 {
      let x = NumberReference(x: refResult.x + i + random())
      refResult = x
    }
    print(refResult)
  }
}
