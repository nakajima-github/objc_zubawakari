//
//  ViewController.m
//  ex_keyFrameAnimation
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *myButton;

- (IBAction)playAnimation:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


// アニメーションをスタートする
- (IBAction)playAnimation:(UIButton *)sender {
    [UIView animateKeyframesWithDuration:2.0
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeCubic
                              animations:^{
                                  // 1番目のアニメーション
                                  [UIView addKeyframeWithRelativeStartTime:0.2
                                                          relativeDuration:0.6 //アニメーション全体の長さ
                                                                animations:^{
                                                                    self.myButton.center = CGPointMake(160, 100);
                                                                }];
                                  // 2番目のアニメーション
                                  [UIView addKeyframeWithRelativeStartTime:0.5
                                                          relativeDuration:0.5 //アニメーション全体の長さ（全体の50%）
                                                                animations:^{
                                                                    self.myButton.backgroundColor = [UIColor redColor];
                                                                }];
                              } completion:nil];
}
@end
