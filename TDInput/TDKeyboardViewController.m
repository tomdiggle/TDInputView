//
//  TDKeyboardViewController.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDKeyboardViewController.h"

@implementation TDKeyboardViewController

#pragma mark - Synthesize

@synthesize delegate;

#pragma mark - Memory management

- (void)dealloc 
{
	self.delegate = nil;
	[super dealloc];
}

#pragma mark - IBAction Methods

- (IBAction)characterSelected:(id)sender
// The currentTitle is used as the string
{
	if (delegate)
	{
		[delegate characterTapped:[sender currentTitle]];
	}
}

- (IBAction)deleteBackward:(id)sender
{
	if (delegate)
	{	
		[delegate deleteBackwardTapped];
	}
}

- (IBAction)returnTapped:(id)sender
{
	if (delegate)
	{
		[delegate returnTapped];
	}
}

@end