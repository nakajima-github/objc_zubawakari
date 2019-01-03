//
//  ViewController.m
//  ex_addSubview_UILabel
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for (int i = 0; i < 8; i++){
        CGRect theFrame = CGRectMake(20, 50+50*i, 120+20*i, 30);
        UILabel *myLabel = [[UILabel alloc] initWithFrame:theFrame];
        myLabel.text = @"こんにちは";
        myLabel.textAlignment = NSTextAlignmentCenter;
        myLabel.textColor = [UIColor yellowColor];
        myLabel.backgroundColor = [UIColor colorWithRed:(arc4random()%100)/100.0
                                                  green:(arc4random()%100/100.0)
                                                   blue:(arc4random()%100/100.0)
                                                  alpha:1.0];
        [self.view addSubview:myLabel];
    }
    
    
    
}


@end
