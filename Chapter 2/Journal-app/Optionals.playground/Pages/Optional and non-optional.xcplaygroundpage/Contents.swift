//: ### Optional and non-optional

import UIKit
/*
Objective-C code

- (NSUInteger)indexOfObject:(id)anObject;
+ (instancetype)stringWithString:(NSString *)string;
*/

func indexOfObject(object: Any) -> Int? {
  return nil
}

func stringWithString(string: String?) -> String? {
  return nil
}

var index: Int?
var number: Int = 10

index = nil
//number = nil //Error

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

