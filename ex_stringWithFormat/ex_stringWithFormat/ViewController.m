//
//  ViewController.m
//  ex_stringWithFormat
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)calc:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)calc:(UIButton *)sender {
    int ans = (1 + 2) * 3;
    self.myLabel.text = [NSString stringWithFormat:@"答えは%dです", ans];
}
@end
