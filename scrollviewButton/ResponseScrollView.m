//
//  Resopnse2.m
//  scrollviewButton
//
//  Created by chh on 16/1/20.
//  Copyright © 2016年 cn.cuihh.Launch. All rights reserved.
//

#import "ResponseScrollView.h"

@implementation ResponseScrollView
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
     self = [super initWithCoder:aDecoder];
     if (self) {
         self.delaysContentTouches = NO;
     }
     return self;
}
-  (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.delaysContentTouches = NO;
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
