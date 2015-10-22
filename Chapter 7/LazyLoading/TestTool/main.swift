//
//  main.swift
//  TestTool
//
//  Created by Kostiantyn Koval on 16/06/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

print("Start!")

// --- Global Variables

print("Age: \(Jon.age)")
//print("Age: \(Sam.age)")

// --- Type Properties

print("Age: \(Person.Jon.age)")
print("Age: \(Person.Sam.age)")

// --- Lazy Properties

var ola = Person(name: "Ola", age: 27)
var health = ola.healthData

// Clear health data
print(health)
ola.clearHelthData()
health = ola.healthData
print(health)

// --- Computed

var jack = Person(name: "Jack", lastName: "Samuel", age: 24)
jack.fullName
jack.fullName

