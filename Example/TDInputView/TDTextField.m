//
//  TDTextField.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDTextField.h"
#import "TDKeyboardViewController.h"

@implementation TDTextField

#pragma mark - Synthesize

@synthesize keyboardSoundURLRef;
@synthesize keyboardSoundFileObject;
@synthesize keyboardClicks;
@synthesize tdKeyboardInputView;
@synthesize delegate;

#pragma mark - Memory Management

- (void)dealloc
{
    CFRelease(keyboardSoundURLRef);
    AudioServicesDisposeSystemSoundID([self keyboardSoundFileObject]);
	[tdKeyboardInputView release], tdKeyboardInputView = nil;
    [self setDelegate:nil];
    [super dealloc];
}

#pragma mark - inputView

/*
 If the value in this property is nil, the text field displays the standard system keyboard when it becomes first responder.
 Assigning a custom view to this property causes that view to be presented instead.
 */
- (UIView*)inputView
{
	if (!tdKeyboardInputView)
	{
		tdKeyboardInputView = [[TDKeyboardViewController alloc] initWithNibName:@"TDKeyboardViewController" 
																		 bundle:[NSBundle mainBundle]];
		[tdKeyboardInputView setDelegate:self];
        keyboardSoundURLRef = CFBundleCopyResourceURL(CFBundleGetBundleWithIdentifier(CFSTR("com.apple.UIKit")), CFSTR("Tock"), CFSTR("aiff"), NULL);
        AudioServicesCreateSystemSoundID(keyboardSoundURLRef, &keyboardSoundFileObject);
	}

	return tdKeyboardInputView.view;
}

#pragma mark - playKeyboardClicks

- (void)playKeyboardClicks
{
	if (keyboardClicks)
	{
		AudioServicesPlaySystemSound([self keyboardSoundFileObject]);
	}
}

#pragma mark - TDKeyboardViewControllerDelegate Methods

- (void)characterTapped:(NSString*)aString
{
	BOOL appendTextString = YES;
	[self playKeyboardClicks];
	
	if (delegate && [delegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)])
	{
		appendTextString = [delegate textField:self
				 shouldChangeCharactersInRange:NSMakeRange([self text].length, 1)
							 replacementString:aString];
	}
	
	if (appendTextString)
	{
		[self setText:[[self text] stringByAppendingString:aString]];
	}
}

- (void)deleteBackwardTapped
{
	NSMutableString *textStore = [[self text] mutableCopy];
	
	if ([textStore length] != 0)
	{
		[self playKeyboardClicks];
		NSRange theRange = NSMakeRange(textStore.length-1, 1);
		[textStore deleteCharactersInRange:theRange];
		[self setText:textStore];
	}
	
	[textStore release];
}

- (void)returnTapped
{
	if (delegate != nil)
	{
		[self playKeyboardClicks];
		[delegate textFieldDidEndEditing:self];
	}
}

@end