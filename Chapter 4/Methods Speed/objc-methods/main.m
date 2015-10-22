//
//  main.m
//  objc-methods
//
//  Created by Kostiantyn Koval on 15/08/15.
//
//

#import <Foundation/Foundation.h>
#import "Measure.h"
#import "KKNumber.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    
    KKNumber *number = [[KKNumber alloc] init];
    
    [Measure measure:1 call:^{
      NSInteger result = 0;
      for (int i  = 0; i < 1000000000; ++i) {
        result += [number add:i number:i + 1];
      }
      NSLog(@"Result %ld", (long)result);
    }];
  }
  
  return 0;
}
