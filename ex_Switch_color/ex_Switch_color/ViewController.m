//
//  ViewController.m
//  ex_Switch_color
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;

- (IBAction)changeColor:(UISwitch *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)changeColor:(UISwitch *)sender {
    if (sender.onw){
        self.view.backgroundColor = [UIColor redColor];
    }else{
        self.view.backgroundColor = [UIColor grayColor];
    }
}
@end
