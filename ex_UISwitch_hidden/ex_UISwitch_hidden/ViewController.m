//
//  ViewController.m
//  ex_UISwitch_hidden
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UIImageView *myPhoto;
- (IBAction)showHidePhoto:(UISwitch *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showHidePhoto:(UISwitch *)sender {
    self.myPhoto.hidden = !self.mySwitch.on;
}
@end
