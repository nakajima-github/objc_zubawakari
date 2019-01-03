//
//  ViewController.m
//  ex_addSubview_UIImageView_for
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
    
    UIImageView *imageView;
    UIImage *frogImage = [UIImage imageNamed:@"frog1.png"];
    UIImage *azarashiImage = [UIImage imageNamed:@"azarashi.png"];
    
    int w = 70;
    int h = 70;
    
    for (int i = 0; i < 4; i++){
        for (int j = 0; j < 5; j++){
            switch (j % 2) {
                case 0:
                    imageView = [[UIImageView alloc] initWithImage:frogImage];
                    break;
                case 1:
                    imageView = [[UIImageView alloc] initWithImage:azarashiImage];
                    break;
            }
            imageView.frame = CGRectMake(10+(w+5)*i, 50+(h+10)*j, w, h);
            [self.view addSubview:imageView];
        }
    }
    
    
}


@end
