//
//  RootViewController.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "RootViewController.h"

@implementation RootViewController

#pragma mark - View Life Cycle

- (void)viewWillAppear:(BOOL)animated
{
    [self.textField becomeFirstResponder];
}

#pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(nonnull UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
