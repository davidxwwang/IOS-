//
//  StringRelated.m
//  总结
//
//  Created by xwwang_0102 on 15/11/1.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import "StringRelated.h"

@implementation StringRelated


/** 计算 NSString 的高度 */
- (CGFloat)heightForDescriptionText:(NSString *)text
{
    UIFont *font = self.descriptionLbl.font;
    CGFloat width=self.descriptionLbl.frame.size.width;
    CGRect rect = [text boundingRectWithSize:CGSizeMake(width, FLT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                  attributes:@{NSFontAttributeName : font}
                                     context:nil];
    return rect.size.height;
}

/** 计算 NSAttributedString 的高度 */
- (CGFloat)heightForDescriptionAttributedString:(NSAttributedString *) text
{
    CGFloat width=self.descriptionLbl.frame.size.width;
    CGRect rect = [text boundingRectWithSize:CGSizeMake(width, FLT_MAX)
                                     options:NSStringDrawingUsesLineFragmentOrigin
                                     context:nil];
    return rect.size.height;
}

/**
 *  从fromString中搜索是否包含searchString
 *
 *  @param searchString 要搜索的字串
 *  @param fromString   从哪个字符串搜索
 *
 *  @return 是否包含字串
 */
- (BOOL)realtimeSearchString:(NSString *)searchString fromString:(NSString *)fromString
{
    if (!searchString || !fromString || (fromString.length == 0 && searchString.length != 0)) {
        return NO;
    }
    if (searchString.length == 0) {
        return YES;
    }
    
    NSUInteger location = [[fromString lowercaseString] rangeOfString:[searchString lowercaseString]].location;
    return (location == NSNotFound ? NO : YES);
}


@end
