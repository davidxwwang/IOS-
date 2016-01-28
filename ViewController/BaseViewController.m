/************************************************************
  *  * EaseMob CONFIDENTIAL 
  * __________________ 
  * Copyright (C) 2013-2014 EaseMob Technologies. All rights reserved. 
  *  
  * NOTICE: All information contained herein is, and remains 
  * the property of EaseMob Technologies.
  * Dissemination of this information or reproduction of this material 
  * is strictly forbidden unless prior written permission is obtained
  * from EaseMob Technologies.
  */

#import "BaseViewController.h"
#import "Reachability.h"

@interface BaseViewController ()
{
    Reachability *_networkConn;
}
 
@end

@implementation BaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(networkStateChange:) name:kReachabilityChangedNotification object:nil];
    _networkConn = [Reachability reachabilityForInternetConnection];
    [_networkConn startNotifier];


}

- (NSString *)networkStateChange:(NSNotification*)note {
    Reachability * reach = [note object];
    NSString *_netState = nil;
    if ([[Reachability reachabilityForInternetConnection] isReachable]) {
        NSLog(@"online");
        if (_networkConn.isReachableViaWiFi) {
            NSLog(@"--wifi");
            _netState = @"wifi";
            return @"wifi";
        } else if (_networkConn.isReachableViaWWAN) {
            NSLog(@"--wlan");
            _netState = @"wlan";
            return @"wlan";
        } else {
        }
    }else
    {
        NSLog(@"offline");
        _netState = @"offline";
        return @"offline";
    }
    return @"offline";
    self.netState = _netState;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end






















