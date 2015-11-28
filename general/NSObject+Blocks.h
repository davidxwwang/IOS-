//
//  NSObject+Blocks.h
//  FTB
//
//  Created by 邵小东 on 15/2/9.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Blocks)
- (void)performBlock:(void (^)())block afterDelay:(NSTimeInterval)delay;
@end
