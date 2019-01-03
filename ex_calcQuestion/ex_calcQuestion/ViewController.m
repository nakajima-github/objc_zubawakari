//
//  ViewController.m
//  ex_calcQuestion
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *aLabel;
@property (weak, nonatomic) IBOutlet UILabel *ans1Label;
@property (weak, nonatomic) IBOutlet UILabel *bLabel;
@property (weak, nonatomic) IBOutlet UILabel *ans2Label;
- (IBAction)makeExamination:(UIButton *)sender;
- (IBAction)calc:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)makeExamination:(UIButton *)sender {
//    乱数を作る
    int a = arc4random() % 20;  // 0から19の乱数を作成する
    int b = arc4random() % 10 + 1; // 1から10の乱数を作成する
    
    self.aLabel.text = [NSString stringWithFormat:@"%d",a];
    self.bLabel.text = [NSString stringWithFormat:@"%d",b];
    
    self.ans1Label.text = @"?";
    self.ans2Label.text = @"?";
    
}

- (IBAction)calc:(UIButton *)sender {
    
    int a = [self.aLabel.text intValue];
    int b = [self.bLabel.text intValue];
    
    int ans1 = 7 + a;
    float ans2 = b / 3.0;
    
    self.ans1Label.text = [NSString stringWithFormat:@"%d", ans1];
    self.ans2Label.text = [NSString stringWithFormat:@"%0.2f", ans2];
}
@end
