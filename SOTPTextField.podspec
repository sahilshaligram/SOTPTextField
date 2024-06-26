#
# Be sure to run `pod lib lint SOTPTextField.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SOTPTextField'
  s.version          = '0.1.4'
  s.summary          = 'OTP verification functionality using Textfield.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'OTP textfield get the code verified by the function verifyCode.'

  s.homepage         = 'https://github.com/sahilshaligram/SOTPTextField'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sahilshaligram' => '126651068+sahilshaligram@users.noreply.github.com' }
  s.source           = { :git => 'https://github.com/sahilshaligram/SOTPTextField.git', :tag => s.version.to_s}

  s.ios.deployment_target = '11.0'

  s.swift_version = "5.0"
  s.source_files = 'SOTPTextField/Classes/**/*'
  s.exclude_files = "SOTPTextField/Classes/*.plist"
  
  # s.resource_bundles = {
  #   'SOTPTextField' => ['SOTPTextField/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
