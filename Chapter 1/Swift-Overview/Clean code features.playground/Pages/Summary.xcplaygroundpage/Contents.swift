//: ### Clean Code Summary. Compare Swift and Objective-C

struct Person {
  let name: String
  let age: Int
}

let people = [
  Person(name: "Sam", age: 10),
  Person(name: "Sara", age: 24),
  Person(name: "Ola", age: 42),
  Person(name: "Jon", age: 19)
]

let kids = people.filter { person in person.age < 18 }
let names = people.map { $0.name.lowercaseString }

//: Objective-C Code
/*
//  Person.h
@import Foundation;

@interface Person : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;

@end

// Person.m
#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
  self = [super init];
  if (!self) return nil;

  _name = name;
  _age = age;

  return self;
}

@end

NSArray *people = @[
  [[Person alloc] initWithName:@"Sam" age:10],
  [[Person alloc] initWithName:@"Sara" age:24],
  [[Person alloc] initWithName:@"Ola" age:42],
  [[Person alloc] initWithName:@"Jon" age:19]
];

NSArray *kids = [people filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"age < 18"]];

NSMutableArray *names = [NSMutableArray new];
for (Person *person in people) {
  [names addObject:person.name.lowercaseString];
}
*/

//: [TOC](TOC) | [Previous](@previous) |

