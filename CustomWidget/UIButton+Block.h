//
//  UIButton+Block.h
//  SoundReading
//
//  Created by Jeffwang on 14/11/04.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

#define kUIButtonBlockTouchUpInside @"TouchInside"

@interface UIButton (Block)

@property (nonatomic, strong) NSMutableDictionary *actions;

- (void) setAction:(NSString*)action withBlock:(void(^)())block;

@end
