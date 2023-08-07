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

## Usage

 - Assign the SOTPTextField class to your textfield
 - Set the properties according to your requirement
 
 ### Import library
 ```swift
  import SOTPTextField
```
 
### Connect outlet to View controller
 ```swift
     @IBOutlet weak var otpTextField: SOTPTextField!
```

 - Verify the otp using the 'verifyOTP' function
### verify OTP 
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
