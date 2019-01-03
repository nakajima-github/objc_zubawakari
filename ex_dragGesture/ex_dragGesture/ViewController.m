//
//  ViewController.m
//  ex_dragGesture
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *azarashi;

- (IBAction)dragAzarashi:(UIPanGestureRecognizer *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)dragAzarashi:(UIPanGestureRecognizer *)sender {
    // ドラッグして移動したベクトル
    CGPoint translation = [sender translationInView:self.view];
    
    // ドラッグした移動距離をアザラシの中心座標に加算する
    CGPoint homeloc = self.azarashi.center;
    homeloc.x += translation.x;
    homeloc.y += translation.y;
    
    // アザラシの座標を更新する
    self.azarashi.center = homeloc;
    
    // 移動開始位置をリセットする
    [sender setTranslation:CGPointZero inView:self.view];
    
}
@end
