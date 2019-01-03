//
//  ViewController.m
//  ex_addSubview_photoCard
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect cardSize = CGRectMake(0, 0, 240, 240);
    UIView *photoCard = [[UIView alloc] initWithFrame:cardSize];
    photoCard.backgroundColor = [UIColor orangeColor];
    
    /* 写真を作る */
    CGRect photoFrame = CGRectMake(10, 10, 220, 180);
    UIImageView *photo = [[UIImageView alloc] initWithFrame:photoFrame];
    photo.contentMode = UIViewContentModeScaleAspectFit;
    photo.clipsToBounds = YES;      // ビューからはみ出た部分をクリッピングする
    photo.image = [UIImage imageNamed:@"IMG_3020b.jpg"];
    
    /* ラベルを作る */
    CGRect imageFrame = CGRectMake(10, 200, 220, 24);
    UILabel *label = [[UILabel alloc]initWithFrame:imageFrame];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Hiragino Mincho ProN W6" size:20];
    label.textColor = [UIColor whiteColor];
    label.text = @"シャミちゃん";
    
    /* フォトカードに写真とラベルを並べる */
    [photoCard addSubview:photo];
    [photoCard addSubview:label];
    
    photoCard.center = self.view.center;
    [self.view addSubview:photoCard];
    
    
}


@end
