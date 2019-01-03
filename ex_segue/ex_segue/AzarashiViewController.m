//
//  AzarashiViewController.m
//  ex_segue
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "AzarashiViewController.h"

@interface AzarashiViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *azarashi;

@end

@implementation AzarashiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [UIView animateWithDuration:1
                     animations:^{
                         self.azarashi.alpha = 1.0;
                     }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
