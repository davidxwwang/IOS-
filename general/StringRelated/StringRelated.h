//
//  StringRelated.h
//  总结
//
//  Created by xwwang_0102 on 15/11/1.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StringRelated : NSObject

- (CGFloat)heightForDescriptionText:(NSString *)text;
- (CGFloat)heightForDescriptionAttributedString:(NSAttributedString *) text;
- (BOOL)realtimeSearchString:(NSString *)searchString fromString:(NSString *)fromString;
@end
