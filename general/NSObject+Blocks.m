//
//  NSObject+Blocks.m
//  FTB
//
//  Created by 邵小东 on 15/2/9.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "NSObject+Blocks.h"

@implementation NSObject (Blocks)
- (void)performBlock:(void (^)())block
{
    block();
}

- (void)performBlock:(void (^)())block afterDelay:(NSTimeInterval)delay
{
    void (^block_)() = [block copy]; // autorelease this if you're not using ARC
    [self performSelector:@selector(performBlock:) withObject:block_ afterDelay:delay];
}
@end
