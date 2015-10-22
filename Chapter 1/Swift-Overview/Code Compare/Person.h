//
//  Person.h
//  Swift-Overview
//
//  Created by Kostiantyn Koval on 01/08/15.
//
//

@import Foundation;

@interface Person : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;
+ (void)test;

@end
