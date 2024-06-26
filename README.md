# SOTPTextField

[![CIStatus](https://img.shields.io/travis/sahilshaligram/SOTPTextField.svg?style=flat)](https://travis-ci.org/sahilshaligram/SOTPTextField)
[![Version](https://img.shields.io/cocoapods/v/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)
[![License](https://img.shields.io/cocoapods/l/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)
[![Platform](https://img.shields.io/cocoapods/p/SOTPTextField.svg?style=flat)](https://cocoapods.org/pods/SOTPTextField)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Screen Shots
* Default behavior of otpTextfield if you dont change any properties
    - Before entering otp
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/initial%20view.png?raw=true)
    - Otp success Color
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/verified%20View.png?raw=true)
    - Otp failure Color
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/inValid%20OTP%20View.png?raw=true)

## Usage

- Assign the SOTPTextField class to your textfield
 
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/ClassSS.png?raw=true)
 
- Set the properties according to your requirement
 
![alt text](https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/PropertiesSS.png?raw=true)
 
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

## Installation

SOTPTextField is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SOTPTextField'
```

## License

SOTPTextField is available under the MIT license. See the LICENSE file for more info.
