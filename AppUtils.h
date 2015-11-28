//
//  AppUtils.h
//  GreenTravel
//
//  Created by Jeffwang on 14/10/31.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface AppUtils : NSObject

/**
 *  单例
 *  需要使用单例时使用
 *  @param __class
 *
 *  @return
 */



+(UIView *)setTitleView:(NSString *)titleName;
+(NSString *)checkTel:(NSString *)str;
+ (NSString*) deviceString;
+(CGFloat)is6plus;

+(float) getSystemVersion;
//+(UIImage *)buttonHighlightedColor:(CGSize )size;
/**
 *  验证字符串是否为空
 *
 *  @param string 需要验证的字符串
 *
 *  @return
 */

+(BOOL) isBlankString:(NSString *)string;


/**
 *  把米转换成千米，公里
 *
 *  @param distanceMetre 所需要转换的米
 *
 *  @return xx公里
 */
+(NSString *) metreConvertKM:(int) distanceMetre;



/**
 *  自定义返回按钮
 *
 *  @param navigationController
 *
 *  @return
 */
//+(UIBarButtonItem *) getLeftSelfNavtionControllerItem:(JWNavigationController*)navigationController;




/**
 *  获取系统当前时间，并转换到String类型
 *
 *  @return 
 */
+(NSString *) getDateTimeNowToString;





/**
 *  编号，时间戳生成，唯一标识
 *
 *  @return 
 */
+(NSString *) getDateTimeTheOneOfWorld;




/**
 *  拼接请求的URL
 *
 *  @param addressUrl
 *
 *  @return 
 */
+(NSString *) kServierUrlString:(NSString *) addressUrl;



/**
 *   获取App版本号
 *
 *  @return
 */
+(NSString *) getAppCurrentVersion;

/**
 *  获取App操作系统
 *
 *  @return
 */
+(NSString *) getAppCurrentOSType;

/**
 *  获取系统版本号
 *
 *  @return
 */
+(NSString *) getAppCurrentOSVersion;


/**
 *  获取当前登陆的用户ID
 *
 *  @return
 */
+(NSString *) getAppCurrentUserId;




/**
 *   验证请求是否成功
 *
 *  @param status
 *
 *  @return
 */
+(BOOL)requestIsTrue:(NSString *) status;



/**
 *  Loading 加载中
 *
 *  @param lodingStatus
 */
//+(void)showLoading:(NSString *) lodingStatus;
//+(void) hideLoaing;
+(UILabel *)setTitleLabel:(NSString *)titleName;
+ (UIImage *)pixelImageWithColor:(UIColor *)color;

@end
