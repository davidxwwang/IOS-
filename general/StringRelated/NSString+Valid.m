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

#import "NSString+Valid.h"

@implementation NSString (Valid)

- (BOOL)isChinese {
    NSString *match = @"(^[\u4e00-\u9fa5]+$)";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF matches %@", match];
    return [predicate evaluateWithObject:self];
}

- (BOOL)isEmpty
{
	if (! self) {
		return YES;
	} else {
		NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
		NSString *trimmedString = [self stringByTrimmingCharactersInSet:set];
		if (trimmedString.length == 0) {
			return YES;
		} else {
			return NO;
		}
	}
}

- (BOOL)isNil
{
	NSString *checkStr = [NSString stringWithFormat:@"%@", self];
	return [checkStr isEqualToString:@"(null)"] || [checkStr isEqualToString:@""] || checkStr.length == 0 ? YES : NO;
}

@end
