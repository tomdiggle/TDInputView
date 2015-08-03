//
//  TDKeyboardViewController.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDKeyboardViewController.h"

@implementation TDKeyboardViewController

#pragma mark - Memory management

- (void)dealloc 
{
	self.delegate = nil;
}

#pragma mark - IBAction Methods

- (IBAction)characterSelected:(id)sender
{
    if (self.delegate)
	{
        [UIDevice.currentDevice playInputClick];
		[self.delegate characterTapped:[sender currentTitle]];
	}
}

- (IBAction)deleteBackward:(id)sender
{
	if (self.delegate)
	{
        [UIDevice.currentDevice playInputClick];
		[self.delegate deleteBackwardTapped];
	}
}

- (IBAction)returnTapped:(id)sender
{
    if (self.delegate)
	{
        [UIDevice.currentDevice playInputClick];
		[self.delegate returnTapped];
	}
}

@end