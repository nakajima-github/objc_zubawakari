//
//  ViewController.m
//  ex_UIActionSheet
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *flower;

- (IBAction)choiceColor:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)choiceColor:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"背景色を選択してください" delegate:self cancelButtonTitle:@"キャンセル" destructiveButtonTitle:NULL otherButtonTitles:@"緑色", @"桃色", @"青色", nil];
    
    
    [sheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    UIColor *color;
    
    switch (buttonIndex){
        case 0:
            color = [UIColor colorWithRed:0.654929 green:1.0 blue:0.451763 alpha:1.0];
            break;
        case 1:
            color = [UIColor colorWithRed:0.906111 green:0.907545 blue:0.882492 alpha:1.0];
            break;
        case 2:
            color = [UIColor colorWithRed:0.319286 green:0.878422 blue:1.0 alpha:1.0];
            break;
        default:
            color = self.flower.backgroundColor;
            break;
    }
    self.flower.backgroundColor = color;
}

@end
