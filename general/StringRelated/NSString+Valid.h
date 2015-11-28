/************************************************************
 *  * EaseMob CONFIDENTIAL
 * __________________
 * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved.
 *
 * NOTICE: All information contained herein is, and remains
 * the property of EaseMob Technologies.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from EaseMob Technologies.
 */

#import <Foundation/Foundation.h>

@interface NSString (Valid)

- (BOOL)isChinese;

/**
 *  判断字符串 string 是否为空以及是否全为空格
 *
 *  @return YES 表示 string 为空，NO 表示不为空
 */
- (BOOL)isEmpty;
/**
 *  检查字符串是否为空
 *
 *  @return 如果字符串为空则返回 YES，否则返回 NO
 */
- (BOOL)isNil;

@end
