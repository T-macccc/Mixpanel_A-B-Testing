//
//  FirstWebViewC.m
//  Example
//
//  Created by apple on 16/3/1.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "FirstWebViewC.h"

@implementation FirstWebViewC

- (void)viewDidLoad{
    UIWebView *webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:webView];
    NSLog(@"self.url:%@",self.urlName);
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.urlName]]];
}



@end
