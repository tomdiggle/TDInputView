//
//  TDTextField.h
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "TDKeyboardViewController.h"

@interface TDTextField : UITextField <TDKeyboardViewControllerDelegate>
{
	CFURLRef keyboardSoundURLRef;
	SystemSoundID keyboardSoundFileObject;
	BOOL keyboardClicks;
	TDKeyboardViewController *tdKeyboardInputView;
	id <UITextFieldDelegate> delegate;
}

@property (nonatomic, readwrite) CFURLRef keyboardSoundURLRef;
@property (nonatomic, readonly) SystemSoundID keyboardSoundFileObject;
@property (nonatomic, readwrite) BOOL keyboardClicks;
@property (nonatomic, retain) TDKeyboardViewController *tdKeyboardInputView;
@property (nonatomic, assign) id <UITextFieldDelegate> delegate;

- (void)playKeyboardClicks;

@end