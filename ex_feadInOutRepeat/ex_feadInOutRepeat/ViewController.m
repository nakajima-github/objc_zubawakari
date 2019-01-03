//
//  ViewController.m
//  ex_feadInOutRepeat
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    UIViewAnimationOptions animeOptions = UIViewAnimationOptionCurveEaseIn | UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat;
    
//    移動先の座標
    CGFloat cx = self.myLabel.center.x;
    CGFloat cy = self.myLabel.center.y;
    CGPoint pt = CGPointMake(cx, cy - 100);
    
//    アニメーションの開始
    [UIView animateWithDuration:1.5 delay:1 options: animeOptions animations:^{
        self.myLabel.center = pt;
        self.myLabel.alpha = 0.2;
    }
                     completion:nil];
}

-(void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
