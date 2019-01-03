//
//  ViewController.m
//  ex_animatedClockLabel
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
//    タイマーを保持するインスタンス変数
    NSTimer *_animateTimer;
    NSTimer *_clockTimer;
    
}
// ラベルをアウトレット接続して、プロパティ宣言を挿入する
@property (weak, nonatomic) IBOutlet UILabel *clockLabel;

// アニメーションメソッド
-(void) flyingAnimation;
// 時刻表示メソッド
-(void) updateClock;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// ビュー表示後のメソッド
- (void)viewDidAppear:(BOOL)animated {
//    ラベルをスタート位置に移動
    self.clockLabel.center = CGPointMake(480, 150);
    
//    flyingAnimationメソッドを５秒単位で呼び出すタイマーの作成
    _animateTimer = [NSTimer scheduledTimerWithTimeInterval:5
                                                target:self
                                              selector:@selector(flyingAnimation)
                                                userInfo:nil
                                               repeats:YES];
//    updateClockメソッドを１秒間隔で呼び出すタイマーの作成
    _clockTimer = [NSTimer scheduledTimerWithTimeInterval:1
                                                   target:self
                                                 selector:@selector(updateClock)
                                                 userInfo:nil
                                                  repeats:YES];
}

// ラベルのフライングアニメーションを行う
- (void)flyingAnimation{
//        ラベルの登場と退場
    [UIView animateWithDuration:0.5
                          delay:0.0
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^{
//                         右から登場
                         self.clockLabel.center = CGPointMake(160, 150);
                     }
                     completion:^(BOOL finished){
//                         ラベルが指定位置まで到達したら
                         [UIView animateWithDuration:0.5
                                               delay:3.0
                                             options:UIViewAnimationOptionCurveEaseIn
                                          animations:^{
                                              self.clockLabel.center = CGPointMake(-160, 150);
                                          } completion:^(BOOL finished){
                                              self.clockLabel.center = CGPointMake(480, 150);
                                          }
                          ];
                    }
     ];
}

// ラベルの日時表示を更新する
- (void)updateClock {
    // 現在時刻の作成
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSString *now = [formatter stringFromDate:[NSDate date]];
    self.clockLabel.text = now;
}

@end
