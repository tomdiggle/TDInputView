//
//  TDKeyboardViewController.h
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import <UIKit/UIKit.h>

@protocol TDKeyboardViewControllerDelegate

- (void)characterTapped:(NSString*)aString;
- (void)deleteBackwardTapped;
- (void)returnTapped;

@end

@interface TDKeyboardViewController : UIViewController <UIInputViewAudioFeedback>

@property (nonatomic, assign) id <TDKeyboardViewControllerDelegate> delegate;

@end
