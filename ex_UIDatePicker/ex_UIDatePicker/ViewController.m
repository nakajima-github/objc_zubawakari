//
//  ViewController.m
//  ex_UIDatePicker
//
//  Created by 中嶋淳 on 2019/01/03.
//  Copyright © 2019 JunNakajima. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *today;
@property (weak, nonatomic) IBOutlet UILabel *selectedDate;
@property (weak, nonatomic) IBOutlet UILabel *days;

- (IBAction)changeDate:(UIDatePicker *)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd"];
    
    self.today.text = [formatter stringFromDate:[NSDate date]];
    self.selectedDate.text = [formatter stringFromDate:[NSDate date]];
    self.days.text = @"0";
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)changeDate:(UIDatePicker *)sender {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"yyyy/MM/dd"];
    self.selectedDate.text = [formatter stringFromDate:sender.date];
    NSDate *sinceDate = [formatter dateFromString: self.today.text];
    
    NSTimeInterval secs = [sender.date timeIntervalSinceDate: sinceDate];
    NSInteger days = round(secs / (60 * 60 * 24));
    self.days.text = [NSString stringWithFormat:@"%d", days];
}

@end
