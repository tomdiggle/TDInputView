//
//  TDInputViewAppDelegate.h
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import <UIKit/UIKit.h>
@class RootViewController;

@interface TDInputViewAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *window;
	RootViewController *rootViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet RootViewController *rootViewController;

@end

