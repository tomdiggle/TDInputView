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
	// Text field set in Interface Builder
	[ibTextField setDelegate:self];
	[ibTextField setKeyboardClicks:YES]; // Keyboard clicks enabled
//	[ibTextField setKeyboardClicks:NO]; // Keyboard clicks disabled
	
	// Text field set in code
	codeTextField = [[TDTextField alloc] initWithFrame:CGRectMake(20.0f, 59.0f, 280.0f, 31.0f)];
	[[self view] addSubview:codeTextField];
	[codeTextField setDelegate:self]; // Remember to set the delegate
	[codeTextField setKeyboardClicks:YES]; // Keyboard clicks enabled
	
	// Cosmetic
	[codeTextField setBorderStyle:UITextBorderStyleRoundedRect];
}

#pragma mark -
#pragma mark UITextFieldDelegate Methods

- (void)textFieldDidEndEditing:(UITextField *)aTextField
{
	[aTextField resignFirstResponder];
}


@end