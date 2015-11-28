//
//  UserDefaultsHelper.h
//  FTB
//
//  Created by 邵小东 on 15/1/6.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsHelper : NSObject

+(NSString*)getStringForKey:(NSString*)key;
+(NSInteger)getIntForkey:(NSString*)key;
+(NSDictionary*)getDictForKey:(NSString*)key;
+(NSArray*)getArrayForKey:(NSString*)key;
+(BOOL)getBoolForKey:(NSString*)key;

+(void)setString:(NSString*)value forKey:(NSString*)key;
+(void)setInt:(NSInteger)value forKey:(NSString*)key;
+(void)setDict:(NSDictionary*)value forKey:(NSString*)key;
+(void)setArray:(NSArray*)value forKey:(NSString*)key;
+(void)setBool:(BOOL)value forKey:(NSString*)key;

@end
