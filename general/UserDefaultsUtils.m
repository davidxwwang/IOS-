//
//  UserDefaultsUtils.m
//  GreenTravel
//
//  Created by Jeffwang on 14/11/21.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import "UserDefaultsUtils.h"

@implementation UserDefaultsUtils


+(void)saveValue:(id)value forKey:(NSString *)key
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    //filter null value in dict
    if ([value isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dictionary=(NSDictionary*)value;
        NSMutableDictionary *result=[NSMutableDictionary dictionary];
            [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
                if (obj != [NSNull null]) {
                    [result setValue:obj  forKey:key];
                }
            }];
            [userDefaults setObject:result forKey:key];
    }else{
        [userDefaults setObject:value forKey:key];
    }

    [userDefaults synchronize];
}


+(id)getValueWithKey:(NSString *)key
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    return [userDefaults objectForKey:key];
}


+(void)saveBoolValue:(BOOL)value withKey:(NSString *)key
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults setBool:value forKey:key];
    [userDefaults synchronize];
}


+(BOOL)getBoolValueWithKey:(NSString *)key
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    return [userDefaults boolForKey:key];
}

+(void)removeObjectForKey:(NSString *)key
{
    NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:key];
    [userDefaults synchronize];
}

@end
