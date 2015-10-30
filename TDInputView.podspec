Pod::Spec.new do |s|
  s.name         = "TDInputView"
  s.version      = "0.1.0"
  s.summary      = "TDInputView is an open source custom input view which is displayed when a text field becomes the first responder."
  s.homepage     = "https://github.com/tomdiggle/TDInputView"
  s.screenshots  = "http://tomdiggle.com/assets/images/tdinputview.png" 
  s.license      = 'MIT'
  s.author       = { "Tom Diggle" => "tom@tomdiggle.com" }
  s.social_media_url = "https://twitter.com/tomdiggle"
  s.source       = { :git => "https://github.com/tomdiggle/TDInputView.git", :tag => "0.1.0" }
  s.requires_arc = true
  s.platform     = :ios, '9.0'
  s.source_files = 'TDInputView'
  s.resources = "TDInputView/Images/*.png"
end
