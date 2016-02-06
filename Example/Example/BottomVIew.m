//
//  BottomVIew.m
//  Example
//
//  Created by apple on 16/2/6.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "BottomVIew.h"

@implementation BottomVIew


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
    // Drawing code
//}

- (void)drawBottomView:(CGRect)rect ImageArray:(NSArray *)imageArray {
    self.fiveView = [NSMutableArray array];
    
    CGFloat selfWidth = rect.size.width/5.0;
    CGFloat selfHeight = rect.size.height;
    CGRect zeroRect = CGRectMake(rect.origin.x, rect.origin.y, selfWidth, selfHeight);
    for (int i = 0; i<5; i++) {
        CGRect nowRect = CGRectMake(zeroRect.origin.x+selfWidth*i, zeroRect.origin.y, selfWidth, selfHeight);
        [self drawPieceView:nowRect image:imageArray[i]];
        
    }
}

- (void)drawPieceView:(CGRect)rect image:(UIImage *)image{
    CGFloat selfWidth = rect.size.width;
    CGFloat selfHeight = rect.size.height;
    CGPoint selfPoint = rect.origin;
    
    CGRect imageRect = CGRectMake(selfPoint.x+(selfWidth-50)/2.0,selfPoint.y+(selfHeight-50)/2.0, 50, 50);
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame = imageRect;
    
    [self.fiveView addObject:imageView];
    [self addSubview:imageView];
}

@end
