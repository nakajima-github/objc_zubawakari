//
//  ViewController.m
//  ex_tapGesture_animation
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *azarashi;
- (IBAction)tapView:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    // タップされた座標を取得する
    CGPoint tapLoc = [sender locationInView:self.view];
    
    // アニメーションのオプション（イーズインアウト、現在の位置から開始する）
    UIViewAnimationOptions animeOptions = UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState;
    
    // タップされた位置にアザラシを移動する
    [UIView animateWithDuration:2.0
                          delay:0
                        options:animeOptions
                     animations:^{
                         self.azarashi.center = tapLoc;
                     }
                     completion:nil];
}
@end
