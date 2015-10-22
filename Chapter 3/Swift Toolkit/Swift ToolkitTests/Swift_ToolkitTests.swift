//
//  Swift_ToolkitTests.swift
//  Swift ToolkitTests
//
//  Created by Kostiantyn Koval on 26/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit
import XCTest
@testable import Swift_Toolkit

class Swift_ToolkitTests: XCTestCase {

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testExample() {
    // This is an example of a functional test case.
    XCTAssert(true, "Pass")
  }

  func testCreatingPeoplePerformance() {
    measureBlock() {
      for i in 1...1000 {
        _ = Person(name: "Sam", age: i)
      }
    }
  }
}
