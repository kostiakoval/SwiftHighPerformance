//
//  Objc.m
//  Interoperability
//
//  Created by Konstantin Koval on 01/04/15.
//
//

#import "MyClass.h"

#import <SwiftApp-Swift.h>

@implementation MyClass

+ (void)sayHi {
  NSLog(@"Hi");
}

// Use swift in Objc
+ (void)testPerson {
  KOKPerson *person = [[KOKPerson alloc] init];
  NSLog(@"%d", person.isMan);
}

@end
