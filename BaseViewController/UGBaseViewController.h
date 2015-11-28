//
//  UGBaseViewController.h
//  FTB
//
//  Created by Jeffwang on 15/1/30.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>


#define STATUSBARHEIGHT 64

#define IOS7_OR_LATER	( [[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedAscending )


@interface UGBaseViewController : UIViewController


@property(nonatomic,assign)int originX;
@property(nonatomic,assign)int originY;
@property(nonatomic,assign)CGSize workSpaceSize;

-(void)initWorkSpace;
-(void)setLeftButtonEmpty;

-(void)setLeftBackButton;

@end
