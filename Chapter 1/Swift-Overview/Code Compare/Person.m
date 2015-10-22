//
//  Person.m
//  Swift-Overview
//
//  Created by Kostiantyn Koval on 01/08/15.
//
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
  self = [super init];
  if (!self) return nil;
  
  _name = name;
  _age = age;
  
  return self;
}

+ (void)test {
  
  NSArray *people = @[
                      [[Person alloc] initWithName:@"Sam" age:10],
                      [[Person alloc] initWithName:@"Sara" age:24],
                      [[Person alloc] initWithName:@"Ola" age:42],
                      [[Person alloc] initWithName:@"Jon" age:19]];
  
  NSArray *kids = [people filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"age < 18"]];
  NSLog(@"Kids: %lu", (unsigned long)kids.count);
  
  NSMutableArray *names = [NSMutableArray new];
  for (Person *person in people) {
    [names addObject:person.name.lowercaseString];
  }
}

@end
