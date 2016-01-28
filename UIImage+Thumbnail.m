//
//  UIImage+Thumbnail.m
//  FTB
//
//  Created by 邵小东 on 15/3/30.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import "UIImage+Thumbnail.h"

@implementation UIImage (Thumbnail)

- (UIImage *) makeThumbnailOfSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, UIScreen.mainScreen.scale);
    // draw scaled image into thumbnail context
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newThumbnail = UIGraphicsGetImageFromCurrentImageContext();
    // pop the context
    UIGraphicsEndImageContext();
    if(newThumbnail == nil)
        NSLog(@"could not scale image");
    return newThumbnail;
}

+ (UIImage *)pixelImageWithColor:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions((CGSize){1.0f, 1.0f}, YES, 0.0f);
    [color setFill];
    
    [[UIBezierPath bezierPathWithRect:(CGRect){CGPointZero, {1.0f, 1.0f}}] fill];
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return [img resizableImageWithCapInsets:UIEdgeInsetsZero];
}


+ (UIImage *)pixelImageWithColor:(UIColor *)color rect:(CGRect )rect {
    UIGraphicsBeginImageContextWithOptions((CGSize){rect.size.width,rect.size.height}, YES, 0.0f);
    [[UIColor yellowColor] setFill];
    [[UIBezierPath bezierPathWithRect:(CGRect){CGPointZero, {rect.size.width,rect.size.height-2}}] fill];
    
    // 3.取得当前的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    /*[[UIColor lightGrayColor] set];
    CGContextAddRect(ctx, CGRectMake(rect.origin.x, 0, rect.size.width, rect.size.height -2));
    CGContextFillPath(ctx);*/
    
    [color set];
    CGContextAddRect(ctx, CGRectMake(rect.origin.x, rect.size.height -2, rect.size.width, 2));
    CGContextFillPath(ctx);
    
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;//[img resizableImageWithCapInsets:UIEdgeInsetsZero];
}

-(UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2
{
    UIGraphicsBeginImageContext(image2.size);
    
    //Draw image2
    [image2 drawInRect:CGRectMake(0, 0, image2.size.width, image2.size.height)];
    
    //Draw image1
    [image1 drawInRect:CGRectMake(20, 20, image1.size.width, image1.size.height)];
    
    UIImage *resultImage=UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return resultImage;
}

+ (UIImage *)imageWithCaputureView:(UIView *)view
{
    // 开启位图上下文
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0);
    
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 把控件上的图层渲染到上下文,layer只能渲染
    [view.layer renderInContext:ctx];
    
    // 生成一张图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    return image;





@end
