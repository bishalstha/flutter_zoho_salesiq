#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_zoho_salesiq.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_zoho_salesiq'
  s.version          = '0.0.1'
  s.summary          = 'Simple flutter plugin for Zoho SalesIQ SDK'
  s.description      = <<-DESC
  Simple flutter plugin for Zoho SalesIQ SDK
                       DESC
  s.homepage         = 'https://github.com/bishalstha/flutter_zoho_salesiq'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Bishal Stha' => 'bishal9shrestha@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'Mobilisten'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
