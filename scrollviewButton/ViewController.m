//
//  ViewController.m
//  scrollviewButton
//
//  Created by chh on 16/1/20.
//  Copyright © 2016年 cn.cuihh.Launch. All rights reserved.
//

#import "ViewController.h"

#import "ResponseScrollView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet ResponseScrollView *scView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];

    UIButton *btn = [[UIButton alloc] init];

    btn.frame = CGRectMake(10, 10, 50, 50);
    [btn setBackgroundImage:[UIImage imageNamed:@"add_icon"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickWithButton) forControlEvents:UIControlEventTouchDown];
    [_scView addSubview:btn];
    
    UIButton *btn2 = [[UIButton alloc] init];
    btn2.backgroundColor = [UIColor redColor];
    btn2.frame = CGRectMake(50, 300, 50, 50);
    [btn2 setBackgroundImage:[UIImage imageNamed:@"add_icon"] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(clickWithButton) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  
    // Dispose of any resources that can be recreated.
}
- (void)clickWithButton {
    NSLog(@"触发button");
}

@end
