//
//  ProgressHelper.h
//
//  Created by wangxw on 15/3/20.
//  Copyright (c) 2015年 wangxw. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

#define ERRORTIPTEXT @"网络错误"

@interface ProgressHelper :NSObject

+(void)showMBProgressHUDInView:(UIView*)dview;

+(void)hideAllHUDsForView:(UIView *)view;
+(void)showMBProgressLoadingHUDInView:(UIView*)view tip:(NSString *)tipText;
+(void)showNoNetworkErrorTipInView:(UIView*)view;

+(void)showMBProgressHUDInView:(UIView *)view tip:(NSString *)tipText;

+(void)showMBProgressLoadingHUDInView:(UIView*)view;
@end
