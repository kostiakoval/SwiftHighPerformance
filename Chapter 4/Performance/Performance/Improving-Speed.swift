//
//  Improving-Speed.swift
//  Performance
//
//  Created by Kostiantyn Koval on 16/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

class Animal {

  final var name: String  = ""
  final func feed() {
  }
}

@inline(__always) func someFunc () {
}

@inline(never) func someOtherFunc () {
}
