//
//  ViewController.m
//  ex_variable
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int a, b;
}
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *ansLabel;
- (IBAction)makeExamination:(UIButton *)sender;
- (IBAction)calc:(UIButton *)sender;

- (void)examination;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self examination];
}

- (void)examination {
    a = arc4random() % 10 + 5;      // 5から14
    b = arc4random() % 10 + 10;     // 10から19
    
    NSString *question = [NSString stringWithFormat:@"%d + %d = ", a, b];
    self.questionLabel.text = question;
    self.ansLabel.text = @"?";
    
}

- (IBAction)makeExamination:(UIButton *)sender {
    [self examination];
}

- (IBAction)calc:(UIButton *)sender {
    self.ansLabel.text = [NSString stringWithFormat:@"%d", a+b];
}
@end
