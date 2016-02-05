//
//  TopView.m
//  Example
//
//  Created by 杨 on 16/2/5.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "TopView.h"

@implementation TopView
{
    UITextField *textField;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    textField = [[UITextField alloc]initWithFrame:CGRectMake(20, rect.size.height*0.618-25, (rect.size.width - 40), 50)];
    UILabel *leftlabel = [[UILabel alloc]initWithFrame:CGRectMake(20, rect.size.height*0.618-25, 40, 50)];
    leftlabel.backgroundColor = [UIColor clearColor];
    textField.leftView = leftlabel;
    textField.leftViewMode = UITextFieldViewModeAlways;//key
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;//placeholder左侧留空白
    textField.placeholder = @"搜索或输入网址";
    textField.clearsOnBeginEditing = YES;
    textField.layer.borderColor = [UIColor blackColor].CGColor;
    textField.layer.borderWidth = 1.0;
    [self addSubview:textField];
    
    UIImageView *weatherImage = [[UIImageView alloc]init];
    [weatherImage setImage:[UIImage imageNamed:@"search_press@2x.png"]];
    weatherImage.frame = CGRectMake(25, rect.size.height*0.618-22, 44, 44);
    [self addSubview:weatherImage];

    // Drawing code
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [textField resignFirstResponder];//点击空白取消键盘
}

@end
