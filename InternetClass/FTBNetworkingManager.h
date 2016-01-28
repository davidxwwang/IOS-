//
//  FTBNetworkingManager.h
//  FTB
//
//  Created by 邵小东 on 15/3/6.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTBNetworkingManager : NSObject

+ (FTBNetworkingManager *)sharedInstance;

- (void)getWithUrl:(NSString *)requestUrl
        parameters:(NSDictionary*)parameters
           success:(void(^)(id))successHandler
           failure:(void(^)(void))failureHandler;

- (void)postWithUrl:(NSString *)requestUrl
           success:(void(^)(id))successHandler
           failure:(void(^)(void))failureHandler;

@end
