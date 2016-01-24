//
//  UIScrollView+Response.m
//  scrollviewButton
//
//  Created by chh on 16/1/20.
//  Copyright © 2016年 cn.cuihh.Launch. All rights reserved.
//

#import "UIScrollView+Response.h"

@implementation UIScrollView (Response)
- (BOOL)touchesShouldBegin:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event inContentView:(UIView *)view {
    

    if ([view isKindOfClass:[UIButton class]]) {
//         NSLog(@"view = %@\n view.count = %lu\n",view,(unsigned long)[view subviews].count);
        return NO;
    }
    
    return YES;
}

@end
