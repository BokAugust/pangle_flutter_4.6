#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint pangle_flutter.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'pangle_flutter'
  s.version          = '1.7.0'
  s.summary          = 'Flutter plugin for Pangle Ad SDK.'
  s.description      = <<-DESC
Flutter plugin for Pangle Ad SDK.
                       DESC
  s.homepage         = 'https://github.com/nullptrX/pangle_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'nullptrX' => 'nullptrxxx@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.static_framework = true

  s.default_subspec   = 'cn'

  s.subspec 'cn' do |ss|
    ss.ios.dependency 'Ads-CN', '4.6.0.7'
  end

  s.subspec 'global' do |ss|
    ss.ios.dependency 'Ads-Global', '~> 4.6'
  end

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
