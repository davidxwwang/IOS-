//
//  YXLocation.h
//  GreenTravel
//
//  Created by Jeffwang on 14/11/24.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import <Foundation/Foundation.h> 
#import <CoreLocation/CoreLocation.h>
#import "AppMarco.h" 
#import <UIKit/UIKit.h>
#import "BMapKit.h"

@class YXLocation;


@protocol YXLocationDelegate <NSObject>
@optional
-(void)didUpdateLocation:(YXLocation *)loc;
-(void)didUpdateLocation:(double)loc  long :(double)_long;

@optional
-(void)didFailWithError:(NSError *)error location:(YXLocation *)loc;

@end



@interface YXLocation : NSObject<BMKLocationServiceDelegate>

@property(nonatomic,assign)double myLatitude;
@property(nonatomic,assign)double myLongitude;
@property(nonatomic,retain)BMKLocationService *locationManager;
@property(weak)id <YXLocationDelegate> delegate;



+(YXLocation *)sharedBMKLocationManager;
//-(CLLocationCoordinate2D)currentLocation;

-(void)startUpdateLocation;

-(void)stopUpateLoaction;


AS_SINGLETON(YXLocation)

@end
