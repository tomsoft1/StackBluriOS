Pod::Spec.new do |s|
  s.name     = 'StackBluriOS'
  s.version  = '0.0.2'
  s.platform = :ios
  s.license  = 'BSD'
  s.summary  = 'Stack Blur implementation for iOS.'
  s.homepage = 'https://github.com/tomsoft1/StackBluriOS'
  s.author   = { 'Thomas Landspurg' => 'thomas.landspurg@gmail.com' }
  s.source   = { :git => 'https://github.com/tomsoft1/StackBluriOS.git', :commit => 'b12dd3ba2eedc089cf2b518e693b0beea78e6806' }

  s.source_files = 'Classes/UIImage+StackBlur.*'
  s.requires_arc = true
end
