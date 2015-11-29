//
//  baseView.m
//  总结
//
//  Created by xwwang_0102 on 15/11/29.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import "baseView.h"

@implementation baseView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIViewController *)viewController {
    for (UIView *view = self; view; view = view.superview) {
        UIResponder *nextResponder = [view nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}


@end
