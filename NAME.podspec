#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = '${POD_NAME}'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ${POD_NAME}.'
  s.description      = <<-DESC
    TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/${USER_NAME}/${POD_NAME}'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '${USER_NAME}' => '${USER_EMAIL}' }
  s.source           = { :git => 'https://github.com/${USER_NAME}/${POD_NAME}.git', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  s.source_files = '${POD_NAME}/Source/**/*.{swift}'
  s.subspec 'Resources' do |resources|
      resources.resource_bundle = {'${POD_NAME}' => ['${POD_NAME}/Source/**/*.{xcassets,json,storyboard,xib,xcdatamodeld}']}
  end
  # s.dependency 'ABCore'
  # s.dependency 'ABUIComponents'
end