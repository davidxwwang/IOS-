//
//  JWCustomButton.m
//  AutoLaoutDemo
//
//  Created by Jeffwang on 15/1/26.
//  Copyright (c) 2015年 Jeff.Wang. All rights reserved.
//

#import "JWCustomButton.h"

@implementation JWCustomButton
{
  NSMutableDictionary *_colors;
}


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self=[super initWithFrame:frame]) {
        _colors=[NSMutableDictionary dictionary];
    }
    return self;
}


-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state
{
   
    if (state==UIControlStateNormal) {
        [super setBackgroundColor:backgroundColor];
    }
    [_colors setValue:backgroundColor forKey:[self keyForState:state]];
}


-(UIColor *)backgroundColorForState:(UIControlState)state
{
    return [_colors valueForKey:[self keyForState:state]];
}


-(void)setHighlighted:(BOOL)highlighted
{
   [super setHighlighted:highlighted];
    NSString *highlightedKey=[self keyForState:UIControlStateHighlighted];
   UIColor *highlightedColor = [_colors valueForKey:highlightedKey];
    if (highlighted&&highlightedColor) {
        [super setBackgroundColor:highlightedColor];
    }
    else{
        if ([self isSelected]) {
            NSString *selectedKey = [self keyForState:UIControlStateSelected];
            UIColor *selectedColor = [_colors valueForKey:selectedKey];
            [super setBackgroundColor:selectedColor];
        }
        else{
            NSString *normalKey = [self keyForState:UIControlStateNormal];
            [super setBackgroundColor:[_colors valueForKey:normalKey]];
        }
    }
}



-(void)setSelected:(BOOL)selected
{
   [super setSelected:selected];
    NSString *selectedKey = [self keyForState:UIControlStateSelected];
    UIColor *selectedColor = [_colors valueForKey:selectedKey];
    if (selected&&selectedColor) {
         [super setBackgroundColor:selectedColor];
    }
    else{
        NSString *normalKey = [self keyForState:UIControlStateNormal];
        [super setBackgroundColor:[_colors valueForKey:normalKey]];
    }
}


- (NSString *)keyForState:(UIControlState)state
{
    return [NSString stringWithFormat:@"state_%lu", (unsigned long)state];
}


@end
