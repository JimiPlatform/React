Pod::Spec.new do |spec|
  spec.name = 'ReactJM'
  spec.version = '0.58.6-pre'
  spec.license = { :type => 'MIT' }
  spec.homepage = 'https://github.com/JimiPlatform/React'
  spec.summary = 'React for iOS ReactNative'
  spec.authors = 'Jimi', 'Facebook'

  spec.source = { :git => 'https://github.com/JimiPlatform/React.git', :tag => "#{spec.version}" }
  spec.libraries = "stdc++"

  spec.platform = :ios, "9.0"
  spec.xcconfig = { 'VALID_ARCHS' => 'armv7s armv7 x86_64 arm64 arm64e' }
  spec.dependency 'yogaJM', '0.58.7-alpha'
  spec.dependency 'glogJM', '0.3.5-alpha'
  spec.dependency 'DoubleConversionJM', '1.1.6-alpha'
  spec.dependency 'follyJM', '2018.10.22.00-alpha'
  spec.ios.vendored_frameworks = 'React.framework'
  spec.module_name = 'React'

end


#校验指令
#pod lib lint ReactJM.podspec --verbose --allow-warnings --use-libraries
#发布命令
#pod trunk push ReactJM.podspec --verbose --allow-warnings --use-libraries
