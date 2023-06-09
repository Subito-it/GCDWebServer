# http://guides.cocoapods.org/syntax/podspec.html
# http://guides.cocoapods.org/making/getting-setup-with-trunk.html
# $ sudo gem update cocoapods
# (optional) $ pod trunk register {email} {name} --description={computer}
# $ pod trunk --verbose push
# DELETE THIS SECTION BEFORE PROCEEDING!

Pod::Spec.new do |s|
  s.name     = 'GCDWebServer-SBTUITestTunnel'
  s.version  = '4.0.0'
  s.author   =  { 'Pierre-Olivier Latour' => 'info@pol-online.net' }
  s.license  = { :type => 'BSD', :file => 'LICENSE' }
  s.homepage = 'https://github.com/Subito-it/GCDWebServer'
  s.summary  = 'Lightweight GCD based HTTP server for OS X & iOS (includes web based uploader & WebDAV server)'
  
  s.source   = { :git => 'https://github.com/Subito-it/GCDWebServer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'
  s.osx.deployment_target = '11.0'
  s.requires_arc = true

  s.module_name = 'GCDWebServer'
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |cs|
    cs.source_files = 'GCDWebServer/**/*.{h,m}'
    cs.private_header_files = "GCDWebServer/Core/GCDWebServerPrivate.h"
    cs.requires_arc = true
    cs.ios.library = 'z'
    cs.ios.frameworks = 'CoreServices', 'CFNetwork'
    cs.tvos.library = 'z'
    cs.tvos.frameworks = 'CoreServices', 'CFNetwork'
    cs.osx.library = 'z'
    cs.osx.framework = 'SystemConfiguration'
  end  
end
