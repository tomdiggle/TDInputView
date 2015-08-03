//
//  RootViewController.h
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UITextFieldDelegate>
{
    
}

@property (nonatomic, weak) IBOutlet UITextField *textField;

@end
