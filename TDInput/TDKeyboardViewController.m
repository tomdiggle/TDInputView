//
//  TDKeyboardViewController.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDKeyboardViewController.h"

@implementation TDKeyboardViewController

#pragma mark -
#pragma mark Memory management

- (void)dealloc 
{
	self.delegate = nil;
	[super dealloc];
}

#pragma mark -
#pragma mark IBAction Methods

- (IBAction)characterSelected:(id)sender
// The currentTitle is used as the string
{
	if (delegate != nil)
	{
		[delegate characterTapped:[sender currentTitle]];
	}
}

- (IBAction)deleteBackward:(id)sender
{
	if (delegate != nil)
	{	
		[delegate deleteBackwardTapped];
	}
}

- (IBAction)returnTapped:(id)sender
{
	if (delegate != nil)
	{
		[delegate returnTapped];
	}
}

#pragma mark -
#pragma mark Synthesize

@synthesize delegate;

@end