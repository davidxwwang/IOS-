//
//  UIButton+Block.m
//  SoundReading
//
//  Created by Jeffwang on 14/11/04.
//  Copyright (c) 2014年 Ugoodtech. All rights reserved.
//

#import "UIButton+Block.h"

@implementation UIButton (Block)


static char overviewKey;

@dynamic actions;

- (void) setAction:(NSString*)action withBlock:(void(^)())block {
    
    if ([self actions] == nil) {
        [self setActions:[[NSMutableDictionary alloc] init]];
    }
    
    [[self actions] setObject:block forKey:action]; //为字典actions 添加属性， //block<--->action 等于 value<--->key，这个block相当于函数指针
    
    if ([kUIButtonBlockTouchUpInside isEqualToString:action]) {
        [self addTarget:self action:@selector(doTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    }
}

/************************* 为uibutton 增加新的属性actions***********************/
- (void)setActions:(NSMutableDictionary*)actions {
    objc_setAssociatedObject (self, &overviewKey,actions,OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableDictionary*)actions {
    return objc_getAssociatedObject(self, &overviewKey);
}

- (void)doTouchUpInside:(id)sender {
    void(^block)();
    //block 是 action
    block =[[self actions] objectForKey:kUIButtonBlockTouchUpInside];
     block();
}
@end
