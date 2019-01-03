//
//  ViewController.m
//  ex_animationImages
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *animationSeq;
}
@property (weak, nonatomic) IBOutlet UIImageView *frog;
- (IBAction)tapFrog:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    animationSeq = @[[UIImage imageNamed:@"frog1.png"],
                     [UIImage imageNamed:@"frog2.png"],
                     [UIImage imageNamed:@"frog3.png"],
                     [UIImage imageNamed:@"frog4.png"]];
    
    // カエルのアニメーションビューに画像の配列を設定
    self.frog.animationImages = animationSeq;
    
    // アニメーションの長さを設定
    self.frog.animationDuration = 2.0;
    
    // 繰り返しの回数を設定（0は無限）
    self.frog.animationRepeatCount = 3;
    
    // Do any additional setup after loading the view, typically from a nib.
}

// カエルがタップされたら実行するメソッド
- (IBAction)tapFrog:(UITapGestureRecognizer *)sender {
    if (self.frog.isAnimating){
        // アニメーション実行中の場合
        [self.frog stopAnimating];
    }else{
        [self.frog startAnimating];
    }
    
    
}
@end
