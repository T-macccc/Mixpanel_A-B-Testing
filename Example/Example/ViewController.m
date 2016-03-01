//
//  ViewController.m
//  Example
//
//  Created by 杨 on 16/2/4.
//  Copyright © 2016年 杨. All rights reserved.
//

#import "ViewController.h"
#import "TopView.h"
#import "MyCollectionViewCell.h"
#import "FirstWebViewC.h"

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (strong,nonatomic)UICollectionView *collectionView;
@end

@implementation ViewController
{
    NSArray *imageArray;
    NSArray *nameArray;
    NSArray *urlArray;
    UIView *helpView;
    UIButton *backButton;
}

-(void)arrayinit{
    imageArray = [NSArray array];
    nameArray = [NSArray array];
    
    UIImage *image1 = [UIImage imageNamed:@"1159.png"];//腾讯
    UIImage *image2 = [UIImage imageNamed:@"1160.png"];//百度
    UIImage *image3 = [UIImage imageNamed:@"1165.png"];//赶集
    UIImage *image4 = [UIImage imageNamed:@"1167.png"];//新浪微博
    UIImage *image5 = [UIImage imageNamed:@"1169.png"];//新浪
    UIImage *image6 = [UIImage imageNamed:@"1704.png"];//搜房网
    UIImage *image7 = [UIImage imageNamed:@"1862.png"];//一号店
    UIImage *image8 = [UIImage imageNamed:@"1985.png"];//搜狗
    UIImage *image9 = [UIImage imageNamed:@"1996.png"];//58
    UIImage *image10 = [UIImage imageNamed:@"2011.png"];//京东
    UIImage *image11 = [UIImage imageNamed:@"2173.png"];//苏宁
    UIImage *image12 = [UIImage imageNamed:@"2474.png"];//唯品会
    UIImage *image13 = [UIImage imageNamed:@"2790.png"];//大众点评
    UIImage *image14 = [UIImage imageNamed:@"3301.png"];//途牛
    UIImage *image15 = [UIImage imageNamed:@"fh.png"];//凤凰
    UIImage *image16 = [UIImage imageNamed:@"3940.png"];//美团
    
    imageArray = @[image1,image2,image3,image4,image5,image6,image7,image8,image9,image10,image11,image12,image13,image14,image15,image16];
    nameArray = @[@"腾讯",@"百度",@"赶集",@"微博",@"新浪",@"搜房网",@"一号店",@"搜狗",@"58",@"京东",@"苏宁",@"唯品会",@"大众点评",@"途牛",@"凤凰",@"美团"];
    urlArray = @[@"http://www.qq.com",@"www.baidu.com",@"www.ganji.com",@"www.weibo.com",@"www.sina.com",@"fang.com",@"www.yhd.com",@"www.sougou.com",@"www.58.com",@"www.JD.com",@"www.suning.com",@"vip.com",@"dianping.com",@"www.tuniu.com",@"www.ifeng.com",@"www.meituan.com"];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect rect = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height*0.382);
    TopView *topView = [[TopView alloc]initWithFrame:rect];
    topView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:topView];//topView
    
    [self arrayinit];
    
    CGRect collectionRect = CGRectMake(0, self.view.frame.size.height*0.382, self.view.frame.size.width, self.view.frame.size.height*0.5);
    UICollectionViewFlowLayout *flowlayout = [[UICollectionViewFlowLayout alloc]init];
    [flowlayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    self.collectionView = [[UICollectionView alloc]initWithFrame:collectionRect collectionViewLayout:flowlayout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    [self.collectionView registerClass:[MyCollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    [self.view addSubview:self.collectionView];//导航页
    
    CGRect bottomRect = CGRectMake(0, self.view.frame.size.height-80, self.view.frame.size.width, 80);
    UIImage *bottomImage = [UIImage imageNamed:@"fh.png"];
    NSArray *imageArray = [NSArray array];
    imageArray = @[bottomImage,bottomImage,bottomImage,bottomImage,bottomImage];
    
    UIView *bottomUpLine = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height-79, self.view.frame.size.width, 1)];
    bottomUpLine.backgroundColor = [UIColor blackColor];
    [self.view addSubview:bottomUpLine];//bottom线
    
    [self drawBottomView:bottomRect ImageArray:imageArray];//bottom栏
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)drawBottomView:(CGRect)rect ImageArray:(NSArray *)imageArray {
    
    CGFloat selfWidth = rect.size.width/5.0;
    CGFloat selfHeight = rect.size.height;
    CGRect zeroRect = CGRectMake(rect.origin.x, rect.origin.y, selfWidth, selfHeight);
    for (int i = 0; i<5; i++) {
        CGRect nowRect = CGRectMake(zeroRect.origin.x+selfWidth*i, zeroRect.origin.y, selfWidth, selfHeight);
        [self drawPieceView:nowRect image:imageArray[i] num:i];
        
    }
}

- (void)drawPieceView:(CGRect)rect image:(UIImage *)image num:(int)num{
    CGFloat selfWidth = rect.size.width;
    CGFloat selfHeight = rect.size.height;
    CGPoint selfPoint = rect.origin;
    
    CGRect imageRect = CGRectMake(selfPoint.x+(selfWidth-50)/2.0,selfPoint.y+(selfHeight-50)/2.0, 50, 50);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = imageRect;
    [button setImage:image forState:UIControlStateNormal];
    button.backgroundColor = [UIColor yellowColor];
    
    if (num == 0)
    {
        [button addTarget:self action:@selector(methodOne) forControlEvents:UIControlEventTouchUpInside];
    }
    else if (num == 1)
    {
        [button addTarget:self action:@selector(methodTwo) forControlEvents:UIControlEventTouchUpInside];
    }
    else if (num == 2)
    {
        [button addTarget:self action:@selector(methodThree) forControlEvents:UIControlEventTouchUpInside];
    }
    else if (num == 3)
    {
        [button addTarget:self action:@selector(methodFour) forControlEvents:UIControlEventTouchUpInside];
    }
    else
    {
        [button addTarget:self action:@selector(methodFive) forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view addSubview:button];
}


-(void)methodOne{
    NSLog(@"one");
}

-(void)methodTwo{
    NSLog(@"two");
}

-(void)methodThree{
    
    helpView = [[UIView alloc]init];
    CGRect viewRcet = CGRectMake(0, self.view.frame.size.height*0.618, self.view.frame.size.width, self.view.frame.size.height*0.382);
    helpView.frame = viewRcet;
    helpView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:helpView];
    
    backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setTitle:@"back" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    CGRect buttonRect = CGRectMake((self.view.frame.size.width-100)/2.0, self.view.frame.size.height-60, 100, 60);
    backButton.frame = buttonRect;
    
    [backButton addTarget:self action:@selector(methodDismiss) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:backButton];
}

-(void)methodFour{
    NSLog(@"four");
}

-(void)methodFive{
    NSLog(@"five");
}

-(void)methodDismiss{
    helpView.frame = CGRectZero;
    backButton.frame = CGRectZero;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 16;//定义cell个数
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;//定义section个数
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"cellIdentifier";
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    cell.nameLabel.text = nameArray[indexPath.item];
    cell.nameLabel.font = [UIFont systemFontOfSize:12.0];
    cell.imageView.image = imageArray[indexPath.item];
    return cell;
}//cell展示内容

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(5,5,5,5);
}//定义每个UICollectionView的margin留边

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    
    NSString *urlStr = urlArray[indexPath.row];
    NSLog(@"indexPath:%ld",(long)indexPath.row);
    FirstWebViewC *ViewController = [FirstWebViewC new];
    ViewController.urlName = urlStr;
    NSLog(@"%@,%@",urlStr,ViewController.urlName);
    [self presentViewController:ViewController animated:YES completion:nil];
}//选中时调用方法

-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    CGFloat cellWidth = (self.view.frame.size.width-40)/4.0;
    CGFloat cellheight = (self.view.frame.size.width*0.5-80)/4.0;
    return CGSizeMake(cellWidth, cellheight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
