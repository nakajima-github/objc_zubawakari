//
//  ViewController.m
//  ex_addSubview_longPress
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)longPressView:(UILongPressGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)longPressView:(UILongPressGestureRecognizer *)sender {
    UIImageView *heartView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
    UIImage *heartImage = [UIImage imageNamed:@"heart.png"];
    heartView.image = heartImage;
    
    CGPoint longPressLoc = [sender locationInView:self.view];
    heartView.center = longPressLoc;
    [self.view addSubview:heartView];
    
    
    
    
    
    
}
@end
