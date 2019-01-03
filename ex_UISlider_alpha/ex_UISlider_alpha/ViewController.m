//
//  ViewController.m
//  ex_UISlider_alpha
//
//  Created by 中嶋淳 on 2019/01/02.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

- (IBAction)changedValue:(UISlider *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)changedValue:(UISlider *)sender {
    self.image.alpha = sender.value;
}
@end
