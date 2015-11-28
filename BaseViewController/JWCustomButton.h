//
//  JWCustomButton.h
//  AutoLaoutDemo
//
//  Created by Jeffwang on 15/1/26.
//  Copyright (c) 2015年 Jeff.Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JWCustomButton : UIButton

@property(nonatomic,copy) NSString *titieName;

-(void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState ) state;

-(UIColor *)backgroundColorForState:(UIControlState )state;


- (NSString *)keyForState:(UIControlState)state;

@end
