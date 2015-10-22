//
//  main.m
//  objc
//
//  Created by Kostiantyn Koval on 01/08/15.
//  Copyright © 2015 Kostiantyn Koval. All rights reserved.
//

#import <Foundation/Foundation.h>
@import QuartzCore;

const NSUInteger MAX_COUNT = 100000;
const NSUInteger NUM_TRIALS = 20;

NSMutableArray* makeArray(NSUInteger count) {
  NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:count];
  
  for (NSUInteger i = 0; i < count; i++) {
    NSNumber *number = @(arc4random_uniform(UINT32_MAX));
    [array addObject:number];
  }
  return array;
}


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    double sumTime = 0;
    for (int i = 1; i <= NUM_TRIALS; i++) {
      NSMutableArray *unsortedArray = makeArray(MAX_COUNT);
      
      CFTimeInterval startTime = CACurrentMediaTime();
      [unsortedArray sortUsingComparator:^NSComparisonResult(NSNumber *n1, NSNumber *n2) {
        return [n1 compare:n2];
      }];
      CFTimeInterval totalTime = CACurrentMediaTime() - startTime;
      NSLog(@"time: %g s", totalTime);
      
      sumTime += totalTime;
    }
    NSLog(@"RESULT: %g s", sumTime / NUM_TRIALS);
  }
  return 0;
}
