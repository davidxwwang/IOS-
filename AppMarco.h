//
//  AppMarco.h
//  GreenTravel
//
//  Created by Jeffwang on 14/10/29.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//adoptedSchemeDeleteID

#ifndef GreenTravel_AppMarco_h
#define GreenTravel_AppMarco_h

/**
 *  请求地址  //@"http://103.6.222.33:8589/easybybus/"
 */
#ifdef USE_DEV_SERVER // 192.168.1.106:8080  103.6.222.33:8589
    #define kServerIp @"http://103.6.222.33:8589/easybybus/"
#else
    #define kServerIp @"http://103.6.222.33:8589/easybybus/"
#endif

#define advertisementIp @"http://103.6.222.33:8589/easybybus/photo/"
#define P009Ip @"http://103.6.222.33:8589/easybybus/"

/**
 *  百度地图SDK的key
 *
 *  @return
 */
#define kBaiduKey @"jLCERHKFdGL3GyOVfI1ScvCL"


/**
 *   设置背景颜色 默认为白色
 *
 *  @return
 */
#define kBackgroundColor [UIColor whiteColor]
#define kOffsetUIEdgeInsets  5
#define Customizedblue [UIColor colorWithRed:121/255.0f green:206/255.0f blue:250/255.0f alpha:1.0f]


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
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)/**
 *   获取View宽度和高度
 *
 *  @return
 */
#define kFrameWidth  self.view.frame.size.width
#define kFrameHeight self.view.frame.size.height 

#define kScreenFrameWidth   [[UIScreen mainScreen] bounds].size.width
#define kScreenFrameHeight  [[UIScreen mainScreen] bounds].size.height

#define buttonheight 45
#define buttonTitleFont 20
#define tablecellHeight 45


#undef	RGB
#define RGB(R,G,B)	[UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:1.0f]

#undef	RGBA
#define RGBA(R,G,B,A)	[UIColor colorWithRed:R/255.0f green:G/255.0f blue:B/255.0f alpha:A]


//设置字体
#define DEFAULT_BOLDFONT(s) [UIFont fontWithName:@"Arial" size:s]

/**
 *   分享ShareSDK和微信分享的key
 *
 *  @param __class
 *
 *  @return
 */
#define KShareSDKKEY @"4ded05154631"
#define KShareSDWeChatKEY @"wxdab795854445c0a2"

#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
#define MB_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) \
attributes:@{NSFontAttributeName:font} context:nil].size : CGSizeZero;
#else
#define MB_MULTILINE_TEXTSIZE(text, font, maxSize, mode) [text length] > 0 ? [text \
sizeWithFont:font constrainedToSize:maxSize lineBreakMode:mode] : CGSizeZero;
#endif



// version check
#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:       NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:       NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:       NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:       NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:       NSNumericSearch] != NSOrderedDescending)



#define IS_iOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] == 8.0 ? YES : NO)
#define IS_iOS9 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0 ? YES : NO)
/**
 *  单例
 *  需要使用单例时使用
 *  @param __class
 *
 *  @return
 */

#undef	AS_SINGLETON
#define AS_SINGLETON( __class ) \
- (__class *)sharedInstance; \
+ (__class *)sharedInstance;

#undef	DEF_SINGLETON
#define DEF_SINGLETON( __class ) \
- (__class *)sharedInstance \
{ \
return [__class sharedInstance]; \
} \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[[self class] alloc] init]; } ); \
return __singleton__; \
}

#undef	DEF_SINGLETON_AUTOLOAD
#define DEF_SINGLETON_AUTOLOAD( __class ) \
- (__class *)sharedInstance \
{ \
return [__class sharedInstance]; \
} \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[[self class] alloc] init]; } ); \
return __singleton__; \
} \
+ (void)load \
{ \
[self sharedInstance]; \
}



#endif
