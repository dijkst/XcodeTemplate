Pod::Spec.new do |s|
  s.name     = '___VARIABLE_productName___'
  s.version  = '1.0'
  s.license  = 'MIT'
  s.homepage = 'http://git.intra.ffan.com/___VARIABLE_productName___'
  s.author   = { "___FULLUSERNAME___" => "___FULLUSERNAME___@wanda.cn" }
  s.summary  = '<#描述#>'

  s.platform = :ios, '8.0'
  s.source = { :git => 'ssh://gerrit/___VARIABLE_productName___', :tag=>'1.0' }
  s.prefix_header_file = '___VARIABLE_productName___/Supporting Files/PrefixHeader.pch' 
  s.pod_target_xcconfig = { "__TARGET_NAME__" => "\"$(PRODUCT_NAME)\"" }
  s.source_files = '___VARIABLE_productName___/**/*.{h,m,c,mm}'
  s.resources = ["___VARIABLE_productName___/**/*.{png,jpg,xib,bundle}"]
  
  # s.dependency '<#WDWorkFlow#>'
end
