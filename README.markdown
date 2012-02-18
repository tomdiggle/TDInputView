TDInputView for iPhone
======================
TDInputView is an open source replacement for the standard system keyboard in iOS 4.0+. This is very useful if you only need to display a few keys instead of the whole keyboard. The only down side (if it is one) is that you have to design the keys yourself.

Installation
------------
Just drag the files from TDInputView directory into your project.

Displaying TDInputView In Code
------------------------------
	codeTextField = [[TDTextField alloc] initWithFrame:CGRectMake(20.0f, 59.0f, 280.0f, 31.0f)];
	[[self view] addSubview:codeTextField];
	[codeTextField setDelegate:self]; // Remember to set the delegate
	[codeTextField setKeyboardClicks:YES]; // Keyboard clicks enabled
	[codeTextField setKeyboardClicks:YES]; // Keyboard clicks disabled

License
-------
You can freely use this code sample in any project, commercial or otherwise, at your own risk. It would be nice if I get a mention but it’s not necessary.

