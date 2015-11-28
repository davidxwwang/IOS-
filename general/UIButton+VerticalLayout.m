//
//  UIButton+VerticalLayout.m
//  FTB
//
//  Created by 邵小东 on 15/1/5.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "UIButton+VerticalLayout.h"

@implementation UIButton (VerticalLayout)  

- (void)centerVerticallyWithPadding:(float)padding 
{      
    CGSize imageSize = self.imageView.frame.size;  
//    CGSize titleSize = self.titleLabel.frame.size;  
    CGSize titleSize = [self.titleLabel.text sizeWithAttributes: @{NSFontAttributeName:self.titleLabel.font}];
    
    CGFloat totalHeight = (imageSize.height + titleSize.height + padding);  

    self.imageEdgeInsets = UIEdgeInsetsMake(- (totalHeight - imageSize.height-padding),
                                            0.0f,
                                            0.0f,
                                            - titleSize.width);

    self.titleEdgeInsets = UIEdgeInsetsMake(0.0f,
                                            - imageSize.width,
                                            - (totalHeight - titleSize.height-padding),
                                            0.0f);
   
}


- (void)centerVertically
{  
    const CGFloat kDefaultPadding = 2.0f;
    
    [self centerVerticallyWithPadding:kDefaultPadding];  
}  


@end