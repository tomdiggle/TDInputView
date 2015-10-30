# TDInputView for iOS
TDInputView is an open source custom input view which is displayed when a text field becomes the first responder.

<img src="http://tomdiggle.com/assets/images/tdinputview.png" width="320" height="216">

## Requirements
TDInputView is written in Objective-C and requires Xcode 7.0 to run. A Swift version is available [here](https://github.com/tomdiggle/TCDInputView).

## Adding TCDInputView To Your Project
### CocoaPods
[CocoaPods](http://cocoapods.org/) is the recommended way to add TDInputView to your project.

1. Add a pod entry for TDInputView to your Podfile `pod 'TDInputView', '~> 0.1.0'`.
2. Install the pod(s) by running pod install.
3. ...
4. Profit

### Source Files
Add the files located in the `TDInputView` directory to your project.

## Usage
To display the custom input view when a text field becomes the first responder make sure the text field is a subclass of `TDTextField`. For further information see the demo.

## Changelog
The changelog can be viewed [here](https://github.com/tomdiggle/tdinputview/blob/master/Changelog.markdown).

## License
TDInputView is distributed under the [MIT License](https://github.com/tomdiggle/tdinputview/blob/master/LICENSE).

