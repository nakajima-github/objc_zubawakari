//
//  ViewController.m
//  ex_addSubview_UIImageView
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
    
    // カエルを表示する
    // frame(表示位置と縦横サイズ）の決定
    CGRect rect1 = CGRectMake(90, 50, 100, 100);
    // イメージデータの作成
    UIImageView *frogView = [[UIImageView alloc]initWithFrame:rect1];
    // イメージビューの表示モードの設定
    frogView.contentMode = UIViewContentModeScaleAspectFit;
    // イメージデータの作成
    UIImage *frogImage = [UIImage imageNamed:@"frog1.png"];
    // イメージビューにイメージデータを設定
    frogView.image = frogImage;
    // ビューにイメージビューを追加
    [self.view addSubview:frogView];
    
    
    // アザラシを表示する
    CGRect rect2 = CGRectMake(90, 160, 100, 100);
    UIImageView *azarashiView = [[UIImageView alloc]initWithFrame:rect2];
    azarashiView.contentMode = UIViewContentModeScaleAspectFit;
    UIImage *azarashiImage = [UIImage imageNamed:@"azarashi.png"];
    azarashiView.image = azarashiImage;
    [self.view addSubview:azarashiView];
    
    
}


@end
