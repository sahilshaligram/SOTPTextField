#
# Be sure to run `pod lib lint SOTPTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name             = 'SOTPTextField'
  spec.version          = '0.1.1'
  spec.summary          = 'OTP verification functionality using Textfield.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  spec.description      = 'OTP textfield get the code verified by the function verifyCode.'

  spec.homepage         = 'https://github.com/sahilshaligram/SOTPTextField'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'sahilshaligram' => '126651068+sahilshaligram@users.noreply.github.com' }
  spec.source           = { :git => 'https://github.com/sahilshaligram/SOTPTextField.git', :tag => s.version.to_s }
  
  spec.source_files = 'SOTPTextField/Classes/**/*'
  
  spec.git = 'https://github.com/sahilshaligram/SOTPTextField.git'
  # s.resource_bundles = {
  #   'SOTPTextField' => ['SOTPTextField/Assets/*.png']
  # }

  #spec.frameworks = 'UIKit', 'MapKit'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.dependency 'AFNetworking', '~> 2.3'
end
