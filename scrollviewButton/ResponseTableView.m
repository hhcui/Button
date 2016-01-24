//
//  ResponseTableView.m
//  scrollviewButton
//
//  Created by chh on 16/1/20.
//  Copyright © 2016年 cn.cuihh.Launch. All rights reserved.
//

#import "ResponseTableView.h"

@implementation ResponseTableView
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder]; if (self) { self.delaysContentTouches = NO;
        //因为 UITableViewWrapperView 在iOS7不属于UIScrollView
        //iOS7
        for (id obj in self.subviews)
        {
            if ([NSStringFromClass([obj class]) isEqualToString:@"UITableViewCellScrollView"]){
                
                UIScrollView *scrollView = (UIScrollView *) obj;
                scrollView.delaysContentTouches = NO;
                break;
            }
        }
        //ios 8
        for (id view in self.subviews) {
           
            if ([NSStringFromClass([view class]) isEqualToString:@"UITableViewWrapperView"]) {

                if([view isKindOfClass:[UIScrollView class]]) {

                    UIScrollView *scrollView = (UIScrollView *) view;
                    scrollView.delaysContentTouches = NO;
                }
                break;
            }
        }
       
    }
    return self;
}
- (BOOL)touchesShouldCancelInContentView:(UIView *)view {
    if ([view isKindOfClass:[UIButton class]]){
        return YES;
    }
    return [super touchesShouldCancelInContentView:view];
}
@end
