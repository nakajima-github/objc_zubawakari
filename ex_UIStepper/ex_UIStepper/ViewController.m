//
//  ViewController.m
//  ex_UIStepper
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)stepUpDown:(UIStepper *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.myLabel.text = @"0";
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)stepUpDown:(UIStepper *)sender {
    self.myLabel.text = [NSString stringWithFormat:@"%.0f", sender.value];
}
@end
