//
//  ViewController.m
//  ex_Button_Action
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// アクション接続で挿入したメソッド宣言
- (IBAction)sayHello:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// アクション接続で挿入したメソッド定義
- (IBAction)sayHello:(UIButton *)sender {
//    出力ウィンドウに書き出す
    NSLog(@"ハロー");
}
@end
