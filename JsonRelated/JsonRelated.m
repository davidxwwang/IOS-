//
//  JsonRelated.m
//  总结
//
//  Created by xwwang_0102 on 15/11/1.
//  Copyright © 2015年 xwwang_0102. All rights reserved.
//

#import "JsonRelated.h"

@implementation JsonRelated

+(NSString *) DataTOjsonString:(id)object
{
    NSString *jsonString = nil;
    NSError *error;
    NSData *jsonData=[NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:&error];
    
    if (!jsonData) {
        NSLog(@"Got an error: %@", error);
    }
    else{
        
        jsonString=[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    return jsonString;
}


@end
