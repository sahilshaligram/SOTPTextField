#
# Be sure to run `pod lib lint SOTPTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SOTPTextField'
  s.version          = '0.1.1'
  s.summary          = 'OTP verification functionality using Textfield.'
  s.Pod              = 'SOTPTextfield v - 0.1.1'
  s.platform         = 'iOS'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'OTP textfield get the code verified by the function verifyCode.'

  s.homepage         = 'https://github.com/sahilshaligram/SOTPTextField'
  s.screenshots     = 'https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/initial%20view.png?raw=true', 'https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/verified%20View.png?raw=true', 'https://github.com/sahilshaligram/SOTPTextField/blob/main/Example/ScreenShots/inValid%20OTP%20View.png?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sahilshaligram' => '126651068+sahilshaligram@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/sahilshaligram/SOTPTextField.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.swift_version = '5.0'
  s.source_files = 'SOTPTextField/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SOTPTextField' => ['SOTPTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
