//
//  ViewController.h
//  Assignmentt
//
//  Created by SWUComputer on 2016. 10. 23..
//  Copyright © 2016년 SWUComputer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

<UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate> {
    NSArray *arr;
}

@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UITextField *input;

-(BOOL) textFieldShouldReturn:(UITextField *)textField;

@end

