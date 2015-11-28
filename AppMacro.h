//
//  AppMacro.h
//  FTB
//
//  Created by 邵小东 on 15/1/4.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#ifndef FTB_AppMacro_h
#define FTB_AppMacro_h

typedef NS_ENUM(NSUInteger, ViewDisplayMode)
{
    DisplayModeCollectionView,
    DisplayModeMapView
};

//sample macro define
#define ITEM_HEIGHT_MAX 300
#define ITEM_WIDTH 146
#define spaceToedge 20 

#define kFrameWidth  self.view.frame.size.width
#define kFrameHeight self.view.frame.size.height

#define kScreenFrameWidth   [[UIScreen mainScreen] bounds].size.width
#define kScreenFrameHeight  [[UIScreen mainScreen] bounds].size.height

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;


#endif

#undef	RGB
#define RGB(R,G,B)	[UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]

#undef	RGBA
#define RGBA(R,G,B,A)	[UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A]


#define customedErrorTipRed	[UIColor colorWithRed:255/255.0f green:0/255.0f blue:0/255.0f alpha:1.0f]
#define customedBlue	[UIColor colorWithRed:43/255.0f green:115/255.0f blue:212/255.0f alpha:1.0f]
#define customedGray	[UIColor colorWithRed:198/255.0f green:198/255.0f blue:198/255.0f alpha:1.0f]
#define customedGrayText	[UIColor colorWithRed:127/255.0f green:127/255.0f blue:127/255.0f alpha:1.0f]
#define viewBg	[UIColor colorWithRed:245/255.0f green:245/255.0f blue:245/255.0f alpha:1.0f]

#define customedBlueButtonpressed [UIColor colorWithRed:133/255.0f green:184/255.0f blue:255/255.0f alpha:1.0f]


#ifdef USE_DEV_SERVER
#define kServerIp @"http://test.account.bhome.cc:803/"
#else
#define kServerIp @"http://test.account.bhome.cc:803/"
#endif


#define advertisementIp @"http://www.ugoodtech.com:8589/p009/photo/"
#define P009Ip @"http://www.ugoodtech.com:8589/p009/"

//设置字体
#define DEFAULT_BOLDFONT(s) [UIFont fontWithName:@"Arial" size:s]

#define onlyShowPhotoInWIFI @"onlyShowPhotoInWIFI"
#define kTokenKey  @"tokenKey"

#define kLoginUserinfo @"kLoginUserinfo"


#define noInternetTip @"请检查您的网络连接"
#define noInternetImage @"fail"
#define askInternetOKImage @"37x-Checkmark" 


#define shareContent @"FTB 不服不行啊"

#define font_cu @"FZLanTingHeiS-B-GB"
#define font_zhong @"FZLanTingHeiS-R-GB"
// 粗体默认大小，17.0（UILabel）
#define font_Lanting_Cu_DefaultSize [UIFont fontWithName:font_cu size:[UIFont labelFontSize]]
// 普通默认大小，17.0（UILabel）
#define font_Lanting_Zhong_DefaultSize [UIFont fontWithName:font_zhong size:[UIFont labelFontSize]]
// 粗体自定义大小
#define font_Lanting_Cu(s) [UIFont fontWithName:font_cu size:s]
// 普通自定义大小
#define font_Lanting_Zhong(s) [UIFont fontWithName:font_zhong size:s]

// 粗体自定义大小
#define font_Lanting_Cu_min [UIFont fontWithName:font_cu size:15]
// 普通自定义大小
#define font_Lanting_Zhong_min [UIFont fontWithName:font_zhong size:15]


//#define font_cu @"lantingcu"
//#define font_zhong @"lantingzhong"
//





