//
//  TDInputViewAppDelegate.m
//  TDInputView
//
//  Created by Tom Diggle on 10/08/2010.
//	http://www.tomdiggle.com
//

#import "TDInputViewAppDelegate.h"
#import "RootViewController.h"

@implementation TDInputViewAppDelegate

- (void)dealloc
{
	[rootViewController release];
    [window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{   
	[window addSubview:rootViewController.view];
    [window makeKeyAndVisible];
	
	return YES;
}

@synthesize window, rootViewController;

@end