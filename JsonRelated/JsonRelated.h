//
//  JsonRelated.h
//  总结
//
//  Created by xwwang_0102 on 15/11/1.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonRelated : NSObject


//[NSJSONSerialization JSONObjectWithData:data options:0 error:nil];

/**
 *   任意类型转换成JSON字符串
 *
 *  @param object
 *
 *  @return
 */
+(NSString *) DataTOjsonString:(id)object;

@end
