//
//  UIImage+Thumbnail.h
//  FTB
//
//  Created by 邵小东 on 15/3/30.
//  Copyright (c) 2015年 Ugood Technology, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Thumbnail)


//图片缩放到指定大小尺寸
- (UIImage *) makeThumbnailOfSize:(CGSize)size;

+ (UIImage *)pixelImageWithColor:(UIColor *)color;


//为一个控件画下划线
+ (UIImage *)pixelImageWithColor:(UIColor *)color rect:(CGRect )rect;

//合并图片
-(UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2;

//一个uiview生成uiimage
+ (UIImage *)imageWithCaputureView:(UIView *)view;

@end
