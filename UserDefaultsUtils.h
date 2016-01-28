//
//  UserDefaultsUtils.h
//  GreenTravel
//
//  Created by Jeffwang on 14/11/21.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaultsUtils : NSObject


// 保存
+(void)saveValue:(id) value forKey:(NSString *)key;


//获取值
+(id)getValueWithKey:(NSString *) key;



//BOOLEAN 操作
+(void)saveBoolValue:(BOOL)value withKey:(NSString *)key;


//
+(BOOL)getBoolValueWithKey:(NSString *)key;


+(void)removeObjectForKey:(NSString *)key;

@end
