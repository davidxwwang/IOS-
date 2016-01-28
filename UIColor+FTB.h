//
//  UIColor+FTB.h
//  FTB
//
//  Created by 邵小东 on 15/1/5.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (FTB)

+ (UIColor *)colorFromHexString:(NSString *)hexString;

+ (UIColor*)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b;

+ (UIColor*)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b alpha:(CGFloat)alpha;

- (UIColor *)lighterColor;

- (UIColor *)darkerColor;

+(UIColor*)backArrowColor;
@end
