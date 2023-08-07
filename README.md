# SOTPTextField

[![CI Status](https://img.shields.io/travis/sahilshaligram/SOTPTextField.svg?style=flat)](https://travis-ci.org/sahilshaligram/SOTPTextField)
[![Version](https://img.shields.io/cocoapods/v/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)
[![License](https://img.shields.io/cocoapods/l/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)
[![Platform](https://img.shields.io/cocoapods/p/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

SOTPTextField is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SOTPTextField'
```

##Screen Shots
- Before entering otp

![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/initial%20view.png?raw=true)
- Otp success Color

![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/verified%20View.png?raw=true)
- Otp failure Color

![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/inValid%20OTP%20View.png?raw=true)

## Usage

- Assign the SOTPTextField class to your textfield
 
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/Screenshot%202023-08-07%20at%201.59.46%20PM.png?raw=true)
 
- Set the properties according to your requirement
 
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/Screenshot%202023-08-07%20at%202.26.05%20PM.png?raw=true)
 
 ### Import library
 ```swift
import SOTPTextField
```
 
### Connect outlet to View controller
 ```swift
@IBOutlet weak var otpTextField: SOTPTextField!
```

### verify OTP
 - Verify the otp using the 'verifyOTP' function
  
 ```swift
otpTextField.verifyOTP("456789") { isVerified in
    if isVerified {
        print("verified")
    } else {
        print("inValidOTP")
    }
}
```

## Author

sahilshaligram, 126651068+sahilshaligram@users.noreply.github.com

## License

SOTPTextField is available under the MIT license. See the LICENSE file for more info.
