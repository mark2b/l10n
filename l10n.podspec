#
# Be sure to run `pod lib lint l10n.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'l10n'
  s.version          = '1.0.1'
  s.summary          = 'A short description of l10n.'
  s.description      = <<-DESC
String extension provides convenient way for strings localization
                       DESC

  s.homepage         = 'https://github.com/mark2b/l10n'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mark Berner' => 'mark2b@gmail.com' }
  s.source           = { :git => 'https://github.com/mark2b/l10n.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
