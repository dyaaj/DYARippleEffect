#
# Be sure to run `pod lib lint DYARippleView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DYARippleEffect"
  s.version          = "0.1.0"
  s.summary          = "Add a Tinder-like ripple effect to any view."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
#  s.description      = <<-DESC
#			Add a Tinker-like ripple effect to any view on your app, wether it is UIButton or any subclass of UIView.
#                       DESC

  s.homepage         = "https://github.com/dyaaj/DYARippleEffect.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "dyaaj" => "david.yang.developer@gmail.com" }
  s.source           = { :git => "https://github.com/dyaaj/DYARippleEffect.git", :tag => 0.1.0 }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'DYARippleEffect' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
