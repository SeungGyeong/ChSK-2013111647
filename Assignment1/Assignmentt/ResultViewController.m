//
//  ResultViewController.m
//  Assignmentt
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

@synthesize label;
@synthesize str;
@synthesize status;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //label.text = [str stringByAppendingString:status];
    label.text = str;
    
    [self.subView setHidden:YES];
    [self.subVieww setHidden:YES];
    if([status isEqualToString:@"a"] == true) {
        [self.subView setHidden:NO];
    } else if([status  isEqualToString:@"aa"] == true) {
        [self.subVieww setHidden:NO];
    } else if([status  isEqualToString:@"b"] == true) {
        [self.subView setHidden:NO];
    } else if([status  isEqualToString:@"bb"] == true) {
        [self.subVieww setHidden:NO];
    } else if([status  isEqualToString:@"c"] == true) {
        [self.subView setHidden:NO];
    } else if([status  isEqualToString:@"cc"] == true) {
        [self.subVieww setHidden:NO];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultViewController *vc = [segue destinationViewController];
    
    if([status isEqualToString:@"a"] == true) {
        vc.str = @"짜장면이 선택되었습니다.";
    } else if([status isEqualToString:@"aa"] == true) {
        vc.str = @"짬뽕이 선택되었습니다.";
    } else if([status isEqualToString:@"b"] == true) {
        vc.str = @"후라이드 치킨이 선택되었습니다.";
    } else if([status isEqualToString:@"bb"] == true) {
        vc.str = @"양념 치킨이 선택되었습니다.";
    } else if([status isEqualToString:@"c"] == true) {
        vc.str = @"아메리카노가 선택되었습니다.";
    } else if([status isEqualToString:@"cc"] == true) {
        vc.str = @"라떼가 선택되었습니다.";
    }
    
}

//- (IBAction)win:(UIButton *)sender {
//labell.text =
//  if([status isEqualToString:@"a"] == true) {
//     labell.text = @"짜장면이 선택되었습니다.";
//  } else if([status isEqualToString:@"aa"] == true) {
//      labell.text = @"짬뽕이 선택되었습니다.";
//  } else if([status isEqualToString:@"b"] == true) {
//     labell.text = @"후라이드 치킨이 선택되었습니다.";
// } else if([status isEqualToString:@"bb"] == true) {
//     labell.text = @"양념 치킨이 선택되었습니다.";
//  } else if([status isEqualToString:@"c"] == true) {
//      labell.text = @"아메리카노가 선택되었습니다.";
//  } else if([status isEqualToString:@"cc"] == true) {
//      labell.text = @"라떼가 선택되었습니다.";
// }
//}//

//- (IBAction)lose:(UIButton *)sender {
//}

@end
