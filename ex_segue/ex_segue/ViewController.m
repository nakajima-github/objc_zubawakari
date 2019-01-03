//
//  ViewController.m
//  ex_segue
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
}

- (IBAction) goBackHome:(UIStoryboardSegue *)segue {
    NSLog(@"Exitで戻る %@", segue.identifier);
}
@end
