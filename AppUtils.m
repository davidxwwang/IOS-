//
//  AppUtils.m
//  GreenTravel
//
//  Created by Jeffwang on 14/10/31.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import "AppUtils.h"  
#import "AppMacro.h"
#import "sys/utsname.h"



@implementation AppUtils

/*
+(UIImage *)buttonHighlightedColor:(CGSize )size
{
    CGSize imageSize = CGSizeMake(size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(imageSize, 0, [UIScreen mainScreen].scale);
    [[UIColor colorWithCGColor:[UIColor blackColor].CGColor] setFill];//RGB(179,233,246)
    UIRectFill(CGRectMake(0, 0, imageSize.width, imageSize.height));
    UIImage *pressedColorImg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return pressedColorImg;
}
*/

+(float) getSystemVersion {
    return [[[UIDevice currentDevice] systemVersion] floatValue];
}

+ (NSString*) deviceString   //判断设备类型
{
    // 需要#import "sys/utsname.h"
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    
    
    /*if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5 (GSM+CDMA)";
    */
    return platform;
    
}

+(CGFloat)is6plus
{
    if ([[self deviceString]isEqualToString:@"iPhone 6 Plus"])
        return 86;
    else
        return 64;
}


+(BOOL)isBlankString:(NSString *)string
{
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    
    if ([string isEqualToString:@""]||[string isEqualToString:@"(null)"]) {
        return YES;
    }
    
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    return NO;
}


+(NSString *)metreConvertKM:(int)distanceMetre
{
    int KMDouble=distanceMetre/1000;
    NSString *kmString=[NSString stringWithFormat:@"%d公里",KMDouble];
    return kmString;
}


/**
 *
 *
 *  @param navigationController
 *
 *  @return
 */
/*
+(UIBarButtonItem *) getLeftSelfNavtionControllerItem:(JWNavigationController*)navigationController
{
    UIButton  *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setFrame:CGRectMake(0, 0, 51, 44)];
    [backButton setShowsTouchWhenHighlighted:YES];
    [backButton setTag:1000];
    [backButton setImage:[UIImage imageNamed:@"btn_back_normal"] forState:UIControlStateNormal];
    [backButton setImage:[UIImage imageNamed:@"btn_back_pressed"] forState:UIControlStateHighlighted];
    [backButton setImageEdgeInsets: UIEdgeInsetsMake(0, -30, 0, 0)];
   // [backButton setAction:kUIButtonBlockTouchUpInside withBlock:^{
        [navigationController popViewControllerAnimated:YES];
    }];
    UIBarButtonItem *barleftItem=[[UIBarButtonItem alloc] initWithCustomView:backButton];
    return barleftItem;
}
*/

+(NSString*)getDateTimeNowToString
{
    NSDate *currentDate=[NSDate date];
    NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"YYYY-MM-dd HH:mm:ss"];
    NSString *  locationString=[dateFormatter stringFromDate:currentDate];
    return locationString;
}



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


+(NSString *)getDateTimeTheOneOfWorld
{
    NSDate *currentDate=[NSDate date];
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[currentDate timeIntervalSince1970]];
    return timeSp;
}


+(NSString *) kServierUrlString:(NSString *)addressUrl
{
    
    NSString *url=[NSString stringWithFormat:@"%@%@",kServerIp,addressUrl];
    return url;
}


+(NSString *) getAppCurrentVersion
{
   NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
   NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
   return app_Version;
}


+(NSString *)getAppCurrentOSType
{
    UIDevice *devide=[[UIDevice alloc] init];
    NSString *currentOSType=devide.systemName;
    //[NSString stringWithFormat:@"%@%@",devide.systemName,devide.systemVersion];
    return currentOSType;
}


+(NSString*)getAppCurrentOSVersion
{
    UIDevice *devide=[[UIDevice alloc] init];
    return devide.systemVersion;
}


+(NSString *) getAppCurrentUserId
{
    
    
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"tempUserId"];
}


+(BOOL)requestIsTrue:(NSString *)status
{
     __block BOOL haveResult=NO;
    
    if ([status isEqualToString:@"success"]) {
        haveResult=YES;
    }
     return haveResult;
}


+(UILabel *)setTitleLabel:(NSString *)titleName
{
    UILabel *titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 70, 35)];
    titleLB.adjustsFontSizeToFitWidth = YES;
    titleLB.font = [UIFont fontWithName:font_zhong size:19.0];//Arial-BoldItalicMT
    
   // titleLB.font = [UIFont boldSystemFontOfSize: 19];
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.textColor = customedBlue;
    titleLB.text = titleName;
    return titleLB;
}


+(UIView *)setTitleView:(NSString *)titleName
{
    UILabel *titleLB = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 30)];
    titleLB.adjustsFontSizeToFitWidth = YES;
    titleLB.font = [UIFont fontWithName:font_zhong size:19.0];//Arial-BoldItalicMT
    // titleLB.font = [UIFont boldSystemFontOfSize: 19];
    titleLB.layer.masksToBounds = YES;
    titleLB.textAlignment = NSTextAlignmentCenter;
    titleLB.textColor = [UIColor whiteColor];
    titleLB.backgroundColor = customedBlue;
    titleLB.text = titleName;
    
    [titleLB.layer setCornerRadius:5.0];
    titleLB.layer.borderWidth = 1;
    titleLB.layer.borderColor = customedBlue.CGColor;
    return titleLB;
}



/*

+(void)showLoading:(NSString *)lodingStatus
{
    NSString *status=lodingStatus;
    if ([AppUtils isBlankString:lodingStatus]) {
        status=@"加载中···";
     }
    [KVNProgress showWithStatus:status];
}


+(void)hideLoaing
{
    [KVNProgress dismiss];
}
*/
+(NSString *)checkTel:(NSString *)str
{
    
    if ([str length] == 0) {
        return @"电话号码不能为空";
    }
    
    NSString *regex = @"^((1[3|7][0-9])|(147)|(15[^4,\\D])|(18[0,5-9]))\\d{8}$";//|(17[0-9])
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    
    BOOL isMatch = [pred evaluateWithObject:str];
    if (!isMatch) {
        
        return @"电话号不正确";
    }
    return @"";
    
}



+ (UIImage *)pixelImageWithColor:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions((CGSize){1.0f, 1.0f}, YES, 0.0f);
    [color setFill];
    
    [[UIBezierPath bezierPathWithRect:(CGRect){CGPointZero, {1.0f, 1.0f}}] fill];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return [img resizableImageWithCapInsets:UIEdgeInsetsZero];
}
@end
