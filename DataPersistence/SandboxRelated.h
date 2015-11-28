//
//  SandboxRelated.h
//  总结
//
//  Created by xwwang_0102 on 15/11/1.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//
/*
Documents：应用中用户数据可以放在这里，iTunes备份和恢复的时候会包括此目录
tmp：存放临时文件，iTunes不会备份和恢复此目录，此目录下文件可能会在应用退出后删除
Library/Caches：存放缓存文件，iTunes不会备份此目录，此目录下文件不会在应用退出删除
*/

#import <Foundation/Foundation.h>

@interface SandboxRelated : NSObject

+ (NSString *)homePath;     // 程序主目录，可见子目录(3个):Documents、Library、tmp
+ (NSString *)appPath;        // 程序目录，不能存任何东西
+ (NSString *)docPath;        // 文档目录，需要ITUNES同步备份的数据存这里，可存放用户数据
+ (NSString *)libPrefPath;    // 配置目录，配置文件存这里
+ (NSString *)libCachePath;    // 缓存目录，系统永远不会删除这里的文件，ITUNES会删除
+ (NSString *)tmpPath;        // 临时缓存目录，APP退出后，系统可能会删除这里的内容
+ (BOOL)hasLive:(NSString *)path; //判断目录是否存在，不存在则创建

@end
