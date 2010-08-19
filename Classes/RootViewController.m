//
//  RootViewController.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "RootViewController.h"
#import "TDTextField.h"

@implementation RootViewController

#pragma mark -
#pragma mark View Life Cycle

- (void)viewWillAppear:(BOOL)animated
{
	[textField setDelegate:self];
	[textField setKeyboardClicks:YES];
	[textField becomeFirstResponder];
}

#pragma mark -
#pragma mark UITextFieldDelegate Methods

- (void)textFieldDidEndEditing:(UITextField *)aTextField
{
	[aTextField resignFirstResponder];
}


@end