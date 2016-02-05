//
//  MyCollectionViewCell.m
//  Example
//
//  Created by 杨 on 16/2/5.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell
-(id)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        CGRect imageRect = CGRectMake(0, 0, self.frame.size.height, self.frame.size.height);
        self.imageView = [[UIImageView alloc]initWithFrame:imageRect];
        [self addSubview:self.imageView];
        
        CGRect labelRect = CGRectMake(self.frame.size.height+5, self.frame.size.height*0.2, self.frame.size.width-self.frame.size.height, self.frame.size.height*0.6);//?
        self.nameLabel = [[UILabel alloc]init];
        self.nameLabel.frame = labelRect;
        [self addSubview:self.nameLabel];
    }
    return self;
}
@end
