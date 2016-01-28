//
//  UINavigationController+Transparent.m
//  FTB
//
//  Created by 邵小东 on 15/1/14.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "UINavigationController+Transparent.h"
#import "UIColor+FTB.h"
@implementation UINavigationController (Transparent)
- (void)transparentNavigationBar
{
    [self.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.shadowImage = [UIImage new];
    self.navigationBar.translucent = YES;
    self.view.backgroundColor = [UIColor clearColor];
    self.navigationBar.backgroundColor = [UIColor clearColor];
    self.navigationBar.tintColor=[UIColor whiteColor];
//    [self setNavigationBarHidden:YES animated:NO];
}

- (void)resetTransparentNavigationBar
{
    [self.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    self.navigationBar.tintColor=[UIColor backArrowColor];
//    [self setNavigationBarHidden:NO animated:YES];
//    [self.navigationBar setBackgroundImage:[[UINavigationBar appearance] backgroundImageForBarMetrics:UIBarMetricsDefault] forBarMetrics:UIBarMetricsDefault];
//    [self.navigationBar setTranslucent:[[UINavigationBar appearance] isTranslucent]];
//    [self.navigationBar setShadowImage:[[UINavigationBar appearance] shadowImage]];

}
@end
