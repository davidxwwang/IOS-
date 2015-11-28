//
//  ProgressHelper.m
//  FTB
//
//  Created by 邵小东 on 15/3/20.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "ProgressHelper.h"
#import "MBProgressHUD.h"
#import "AppMacro.h"

@implementation ProgressHelper

+(void)showMBProgressHUDInView:(UIView*)view{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
   // hud.labelText = @"加载中";
    
}

+(void)showMBProgressLoadingHUDInView:(UIView*)view tip:(NSString *)tipText
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.labelText = tipText;
    
}

+(void)showMBProgressLoadingHUDInView:(UIView*)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeIndeterminate;
    hud.labelText = @"加载中";
    
}

+(void)hideAllHUDsForView:(UIView*)view{
    [MBProgressHUD hideAllHUDsForView:view animated:YES];
}

+(void)showNoNetworkErrorTipInView:(UIView*)view{
//    [JWStatusHUD showWithImage:[UIImage imageNamed:@"icon_fail"] status:@"网络异常"];
    [ProgressHelper hideAllHUDsForView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = @"请检查您的网络连接";
    hud.mode = MBProgressHUDModeCustomView;
    //hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
    [hud hide:YES afterDelay:1.0];
    hud.removeFromSuperViewOnHide = YES;
}



+(void)showMBProgressHUDInView:(UIView *)view tip:(NSString *)tipText
{
    [ProgressHelper hideAllHUDsForView:view];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = tipText;
    hud.mode = MBProgressHUDModeCustomView;
    //hud.backgroundColor = [UIColor lightGrayColor];
    //hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:noInternetImage]];
    [hud hide:YES afterDelay:1.0];
    hud.removeFromSuperViewOnHide = YES;
    
}

@end
