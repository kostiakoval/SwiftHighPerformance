//
//  Measure.h
//  Performance
//
//  Created by Kostiantyn Koval on 09/05/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Measure : NSObject

+ (void)measure:(NSInteger)times call:(void(^)())call;

@end
