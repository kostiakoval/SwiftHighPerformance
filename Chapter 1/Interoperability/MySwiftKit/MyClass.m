//
//  ObjcKit.m
//  Interoperability
//
//  Created by Kostiantyn Koval on 03/08/15.
//
//

#import "MyClass.h"

#import <MySwiftKit/MySwiftKit-Swift.h>

@implementation MyClass

+ (void)sayHi {
  NSLog(@"Hi");
}

//Use Swift
+ (void)testPerson {
  KOKPerson *person = [[KOKPerson alloc] init];
  BOOL isMan = person.isMan;
}

@end
