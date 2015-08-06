//
//  ViewController.m
//  UIButton
//
//  Created by MacBookPro on 15/8/6.
//  Copyright (c) 2015年 sky5156. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //第一种创建，创建的时候指定它的类型为Custom，一般都选这个，它表示要自定义它的类型
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //这个是系统自己的button，一般少用
    UIButton *systemButton = [UIButton buttonWithType:UIButtonTypeSystem];
    
    //这种方式也是常用的
    UIButton *myButton1 = [[UIButton alloc] init];
    //设置按钮的位置和尺寸
    myButton.frame = CGRectMake(130, 100, 64, 64);
    myButton1.frame =CGRectMake(130, 200, 64, 64);
    
    //设置按钮文字
    [myButton setTitle:@"按钮" forState:UIControlStateNormal];
    
    //设置按钮文字颜色
    [myButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    //设置按钮内部小图片
    [myButton1 setImage:[UIImage imageNamed:@"button1"] forState:UIControlStateNormal];
    
    //设置按钮背景图片
//    [myButton setBackgroundImage:[UIImage imageNamed:@"button1" ] forState:UIControlStateNormal];
//
    /**
     *  监听按钮的点击
     *
     *  @param running 当点击的时候执行这个方法
     */
    [myButton1 addTarget:self action:@selector(running) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:myButton];
    [self.view addSubview:myButton1];
}

- (void)running
{
    NSLog(@"%s",__func__);
}
@end
