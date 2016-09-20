//
//  ViewController.m
//  重写button
//
//  Created by 52中吴 on 16/9/9.
//  Copyright © 2016年 LPF. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame = CGRectMake(50, 250, 200, 100);
    [btn1 setImage:[UIImage imageNamed:@"i-mine-shoucang@2x副本"] forState:UIControlStateNormal];
    [btn1 setTitle:@"一骑当千" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn1.backgroundColor = [UIColor cyanColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 50, 200, 100);
    [btn setImage:[UIImage imageNamed:@"i-mine-shoucang@2x副本"] forState:UIControlStateNormal];
    [btn setTitle:@"定海神针" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor cyanColor];    //上左下右

    btn.imageEdgeInsets = UIEdgeInsetsMake(0, btn.frame.size.width - btn.imageView.frame.origin.x - btn.imageView.frame.size.width, 0, 0);
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, -(btn.imageView.frame.size.width*2 ), 0, 0);
    [self.view addSubview:btn1];
    [self.view addSubview:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
