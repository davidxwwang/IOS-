//
//  FTBNetworkingManager.m
//  FTB
//
//  Created by 邵小东 on 15/3/6.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "FTBNetworkingManager.h"
#import "AFNetworking.h"
#import "AppMacro.h"

#define  SUCCESS_STATUS_FLAG 200

@implementation FTBNetworkingManager

+ (FTBNetworkingManager *)sharedInstance{
    static FTBNetworkingManager *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[FTBNetworkingManager alloc] init];
    });
    return _sharedInstance;
}

-(NSString*)composeUrlIfNeed:(NSString*)requestUrl{
    if ([requestUrl hasPrefix:@"http://"]||[requestUrl hasPrefix:@"https://"]) {
        return requestUrl;
    }
    if (![requestUrl hasPrefix:@"/"]) {
        requestUrl=[NSString stringWithFormat:@"/%@",requestUrl];
    }
    requestUrl=[NSString stringWithFormat:@"%@%@",kServerIp,requestUrl];
    return requestUrl;
}
-(NSDictionary *)prepareHeaderParams
{
    NSDictionary *publicParam=@{};
    return publicParam;
    
}


- (void)getWithUrl:(NSString *)requestUrl
        parameters:(NSDictionary*)parameters
           success:(void(^)(id))successHandler
           failure:(void(^)(void))failureHandler{
    NSLog(@"loading data from: %@", requestUrl);
    requestUrl=[self composeUrlIfNeed:requestUrl];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];

    NSURLSessionDataTask *dataTask = [manager GET:requestUrl
      parameters:parameters
         success:^(NSURLSessionDataTask *task, id responseObject) {
             NSLog(@"JSON: %@", responseObject);
             NSDictionary* result=(NSDictionary*)responseObject;
             if ([[result objectForKey:@"status"] intValue] ==SUCCESS_STATUS_FLAG) {
                 successHandler([result objectForKey:@"data"] );
             }else{
                 failureHandler();
             }
         }
         failure:^(NSURLSessionDataTask *task, NSError *error) {
             failureHandler();
         }];
	NSLog(@"Request URL:%@", dataTask.originalRequest.URL);
}

- (void)postWithUrl:(NSString *)requestUrl
            success:(void(^)(id))successHandler
            failure:(void(^)(void))failureHandler{
    
    requestUrl=[self composeUrlIfNeed:requestUrl];
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    [manager POST:requestUrl
       parameters:nil
          success:^(NSURLSessionDataTask *task, id responseObject) {
              NSLog(@"JSON: %@", responseObject);
          }
          failure:^(NSURLSessionDataTask *task, NSError *error) {
              failureHandler();
          }];
}

@end
