//
//  RootViewController.h
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import <UIKit/UIKit.h>

@class TDTextField;

@interface RootViewController : UIViewController <UITextFieldDelegate>
{
	IBOutlet TDTextField *textField;
}

@end