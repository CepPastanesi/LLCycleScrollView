
Pod::Spec.new do |s|
  s.name         = "LLCycleScrollView"
  s.version      = "1.4.8"
  s.summary      = "几行代码实现轮播图Swift"
  s.homepage     = "https://github.com/LvJianfeng/LLCycleScrollView"
  s.license      = "MIT"
  s.author             = { "LvJianfeng" => "coderjianfeng@foxmail.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/LvJianfeng/LLCycleScrollView.git", :tag => "#{s.version}" }
  s.source_files  = "Lib/LLCycleScrollView/**/*.{swift}"
  s.resource  = "Lib/LLCycleScrollView.bundle"
s.resources = "Lib/LLCycleScrollView/YoutubePlayerCell/*.xib"
  s.dependency 'Kingfisher'
  s.dependency  'YouTubePlayer'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
end
