//
//  UIview (Thumbnail).m
//  总结
//
//  Created by xwwang_0102 on 15/11/7.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import "UIview (Thumbnail).h"

@implementation UIview__Thumbnail_

-(void)addLeftRoundCornerForView:(UIView*)outletView{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:outletView.bounds
                                                   byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerBottomLeft)
                                                         cornerRadii:CGSizeMake(25.0, 25.0)];
    
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = outletView.bounds;
    maskLayer.path  = maskPath.CGPath;
    outletView.layer.mask = maskLayer;
    [outletView setNeedsDisplay];
    
}



@end
