//
//  ViewController.m
//  ex_NSArray
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)makeFortune:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *fortune;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)makeFortune:(UIButton *)sender {
    
    NSArray *fortuneList = @[@"吉", @"吉", @"吉", @"大吉", @"凶", @"大凶"];
    int position = arc4random() % fortuneList.count;
    self.fortune.text = fortuneList[position];
    
}

@end
