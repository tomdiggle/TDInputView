//
//  TDTextField.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDTextField.h"
#import "TDKeyboardViewController.h"

@interface TDTextField () <TDKeyboardViewControllerDelegate>

@property (nonatomic, retain) TDKeyboardViewController *keyboardView;

@end

@implementation TDTextField

#pragma mark - Memory Management

- (void)dealloc
{
    self.delegate = nil;
}

#pragma mark - inputView

- (UIView *)inputView
{
	if (!self.keyboardView)
	{
		self.keyboardView = [[TDKeyboardViewController alloc] initWithNibName:@"TDKeyboardViewController"
                                                                       bundle:[NSBundle mainBundle]];
        self.keyboardView.delegate = self;
	}

	return self.keyboardView.view;
}

#pragma mark - TDKeyboardViewControllerDelegate Methods

- (void)characterTapped:(NSString*)string
{
	BOOL appendTextString = YES;
	
	if (self.delegate && [self.delegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)])
	{
		appendTextString = [self.delegate textField:self
                      shouldChangeCharactersInRange:NSMakeRange(self.text.length, 1)
                                  replacementString:string];
	}
	
	if (appendTextString)
	{
		[self setText:[self.text stringByAppendingString:string]];
	}
}

- (void)deleteBackwardTapped
{
	NSMutableString *textStore = [self.text mutableCopy];
	
	if ([textStore length] != 0)
	{
		NSRange theRange = NSMakeRange(textStore.length-1, 1);
		[textStore deleteCharactersInRange:theRange];
        self.text = textStore;
	}
}

- (void)returnTapped
{
	if (self.delegate)
	{
		[self.delegate textFieldShouldReturn:self];
	}
}

@end
