//
//  ViewController.m
//  Example
//
//  Created by 杨 on 16/2/4.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "ViewController.h"
#import "TopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*0.382);
    TopView *topView = [[TopView alloc]initWithFrame:rect];
    topView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
