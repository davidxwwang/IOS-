//
//  YXLocation.m
//  GreenTravel
//
//  Created by Jeffwang on 14/11/24.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//
#import "NetworkingManager.h"
#import "YXLocation.h"
#import "SolutionDetailViewController.h"
@implementation YXLocation
static YXLocation *sharedBMKLocationManager;

DEF_SINGLETON(YXLocation)

-(id)init
{
   self=[super init];
    if (self) {
    _locationManager=[[BMKLocationService alloc] init];
    self.locationManager=_locationManager;
    _locationManager.delegate=self;
    
        if ([NetworkingManager reachabilityConnectionNetWork]) {
             [self startUpdateLocation];
        }
    }
    return self;
}


+(YXLocation *)sharedBMKLocationManager
{
    @synchronized(self){
        if (sharedBMKLocationManager==nil)
            sharedBMKLocationManager=[[YXLocation alloc] init];
    }
    return sharedBMKLocationManager;
}


-(void)startUpdateLocation
{
    //启动LocationService
    [_locationManager startUserLocationService];
}

- (void)didUpdateUserLocation:(BMKUserLocation *)userLocation
{
    NSLog(@"didUpdateUserLocation lat %f,long %f",userLocation.location.coordinate.latitude,userLocation.location.coordinate.longitude);
    
    [_locationManager stopUserLocationService];
    CLLocationCoordinate2D pt = (CLLocationCoordinate2D)userLocation.location.coordinate;
    self.myLatitude = pt.latitude;
    self.myLongitude = pt.longitude;
    if (self.delegate && [self.delegate respondsToSelector:@selector(didUpdateLocation:)]) {
        [self.delegate didUpdateLocation:self];
    }
    
    NSValue *positionNow = [NSValue valueWithCGPoint:CGPointMake(userLocation.location.coordinate.latitude, userLocation.location.coordinate.longitude)];
    
    
    if (pt.latitude > 0) {
         [[NSNotificationCenter defaultCenter] postNotificationName:@"nowPosition"
                                                        object:positionNow];
    }

   
    
    
    if ([self.delegate isKindOfClass:[SolutionDetailViewController class]])
        if (self.delegate && [self.delegate respondsToSelector:@selector(didUpdateLocation:)])
        {            [self.delegate didUpdateLocation:pt.latitude  long : pt.longitude];
        }
    
}


-(void)stopUpateLoaction
{
    [_locationManager stopUserLocationService];
}


-(void)didFailToLocateUserWithError:(NSError *)error
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(didFailWithError:location:)]) {
        [self.delegate didFailWithError:error location:self];
    }
}


@end
