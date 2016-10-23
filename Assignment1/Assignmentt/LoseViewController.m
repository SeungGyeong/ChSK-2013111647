//
//  LoseViewController.m
//  Assignmentt
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import "LoseViewController.h"

@interface LoseViewController ()

@end

@implementation LoseViewController
@synthesize str;
@synthesize label_lose;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    label_lose.text = str;
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

@end
