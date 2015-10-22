//
//  Measure.m
//  Performance
//
//  Created by Kostiantyn Koval on 09/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

#import "Measure.h"
@import QuartzCore;

@implementation Measure

+ (void)measure:(NSInteger)times call:(void(^)())call {
  NSMutableArray *results = [NSMutableArray new];

  for (NSInteger i = 0; i < times; i++) {
    CFTimeInterval startTime = CACurrentMediaTime();
    call();
    CFTimeInterval endTime = CACurrentMediaTime();
    [results addObject:@(endTime - startTime)];
  }
  CFTimeInterval avarage;
  for (NSNumber *time in results) {
    avarage += [time doubleValue];
  }
  avarage /= times;
  NSLog(@"Average Time - %f", avarage);
}

@end
