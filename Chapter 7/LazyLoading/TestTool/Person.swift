//
//  2-LoazyLoading.swift
//  LazyLoading
//
//  Created by Kostiantyn Koval on 16/06/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

// Global Variables
let Jon = Person(name: "Jon", age: 20)
let Sam = Person(name: "Sam", age: 20)

struct Person {
  let name: String
  let lastName: String
  let age: Int
  
  static let Jon = Person(name: "Jon", age: 20)
  static let Sam = Person(name: "Sam", age: 20)
  
  private var _healthData: HealthData?
  //lazy var healthData: HealthData = HealthData()
  
  init(name: String, lastName: String, age: Int) {
    self.name = name
    self.age = age
    self.lastName = lastName
    print("\(name) Created")
  }
  
  init(name: String, age: Int) {
    self.init(name: name, lastName:"", age:age)
  }
  
  mutating func clearHelthData() {
    _healthData = nil
  }
  
  var healthData: HealthData {
    mutating get {
      _healthData = _healthData ?? HealthData()
      return _healthData!
    }
  }
  
  var fullName: String {
    print("Computed")
    return "\(name) \(lastName)"
  }
}

struct HealthData {
  init() { print("HealthData Created") }
}