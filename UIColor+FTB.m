//
//  UIColor+FTB.m
//  FTB
//
//  Created by 邵小东 on 15/1/5.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "UIColor+FTB.h"
#import "UtilsMacro.h"

@implementation UIColor (FTB)

+ (UIColor *)colorFromHexString:(NSString *)hexString {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner setScanLocation:1]; // bypass '#' character
    [scanner scanHexInt:&rgbValue];
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
}

+ (UIColor *)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b {
return     [UIColor colorWithRed:r/255.0  green:g/255.0 blue:b/255.0 alpha:1];

}

+ (UIColor *)colorWithR:(CGFloat)r g:(CGFloat)g b:(CGFloat)b alpha:(CGFloat)alpha {
	return [UIColor colorWithRed:r / 255.0  green:g / 255.0 blue:b / 255.0 alpha:alpha];
}

- (UIColor *)lighterColor
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:MIN(b * 1.3, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor
{
    CGFloat h, s, b, a;
    if ([self getHue:&h saturation:&s brightness:&b alpha:&a])
        return [UIColor colorWithHue:h
                          saturation:s
                          brightness:b * 0.75
                               alpha:a];
    return nil;
}

+(UIColor*)backArrowColor{
    return  [UIColor colorWithR:24 g:101 b:209]; //
}

@end
