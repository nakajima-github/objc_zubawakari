//
//  ViewController.m
//  ex_UITextFieldDelegate
//
//  Created by 中嶋淳 on 2019/01/04.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.myTextField.delegate = self;
    
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    // キーボードを引っ込める
    [self.view endEditing:YES];
    NSLog(@"入力された文字> %@", self.myTextField.text);
    
    // 改行コードを入力しない
    return NO;
}

@end
