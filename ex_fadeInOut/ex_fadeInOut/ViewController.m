//
//  ViewController.m
//  ex_fadeInOut
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;

- (IBAction)fadeInOut:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)fadeInOut:(UIButton *)sender {
    // float型の変数newValueを宣言
    float newValue = 0.0;
    
    // 写真のalphaプロパティの値を決定
    // (1.0であればnewValueの値を0.0、それ以外であれば1.0に設定)
    if (self.myPhoto.alpha == 1.0) {
        newValue = 0.0;
    }else{
        newValue = 1.0;
    }
    
    [UIView animateWithDuration:1 animations:^{self.myPhoto.alpha = newValue;}];
    
    
}
@end
