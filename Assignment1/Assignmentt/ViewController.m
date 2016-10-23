//
//  ViewController.m
//  Assignmentt
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize picker;
@synthesize input;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    arr = [[NSArray alloc] initWithObjects:@"짜장 vs 짬뽕", @"후라이드 치킨 vs 양념 치킨", @"아메리카노 vs 라떼", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ResultViewController *vc = [segue destinationViewController];
    
    NSString *strr = [arr objectAtIndex:[self.picker selectedRowInComponent:0]];
    NSString *str;
    
    uint32_t i = arc4random_uniform(2);
    uint32_t ii = -1;
    if([input.text isEqualToString:@"가위"] == true) {
        ii = 0;
        if(i > ii) {
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                //[self.subView setHidden:NO];
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"a";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"b";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"c";
            }
            
        } else if(i <= ii){
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"aa";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"bb";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"cc";
            }
            
        }
    }else if ([input.text isEqualToString:@"바위"] == true) {
        ii = 1;
        if(i > ii) {
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                //[self.subView setHidden:NO];
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"a";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"b";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"c";
            }
            
        } else if(i <= ii){
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"aa";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"bb";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"cc";
            }
            
        }
    }else if ([input.text isEqualToString:@"보"] == true) {
        ii = 2;
        if(i > ii) {
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                //[self.subView setHidden:NO];
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"a";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"b";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이겼습니다.";
                vc.str = str;
                vc.status=@"c";
            }
            
        } else if(i <= ii){
            if([strr isEqualToString:@"짜장 vs 짬뽕"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"aa";
            } else if ([strr isEqualToString:@"후라이드 치킨 vs 양념 치킨"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"bb";
            } else if ([strr isEqualToString:@"아메리카노 vs 라떼"] == true) {
                str = @"이기지 못했습니다.";
                vc.str = str;
                vc.status=@"cc";
            }
            
        }
    }else{
        str = @"다시 입력해주세요";
        vc.str = str;
    }
    
}


-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [arr count];
}

-(NSString *) pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [arr objectAtIndex:row];
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}


@end
