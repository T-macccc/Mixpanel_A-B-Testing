//
//  BottomVIew.h
//  Example
//
//  Created by apple on 16/2/6.
//  Copyright © 2016年 杨. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BottomVIew : UIView
@property (strong,nonatomic)NSMutableArray *fiveView;
- (void)drawBottomView:(CGRect)rect ImageArray:(NSArray *)imageArray;
@end
