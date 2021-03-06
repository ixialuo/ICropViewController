Pod::Spec.new do |s|

  s.name         = "ICropViewController"
  s.version      = "0.0.4"
  s.summary      = "ICropViewController for iOS swift"
  s.description  = <<-DESC
			Pictures crop, it is very convenient.
                   DESC
  s.homepage     = "https://github.com/ixialuo/ICropViewController"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ixialuo" => "ixialuo@gmail.com" }
  s.social_media_url   = "http://blog.csdn.net/ixialuo"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ixialuo/ICropViewController.git", :tag => s.version }
  s.source_files = "Sources/*.swift"
  s.requires_arc = true
  s.dependency 'CTAssetsPickerController'
  s.dependency 'TOCropViewController'

end
