Pod::Spec.new do |s|
  s.name         = "MSSimpleGauge"
  s.version      = "0.3.1"
  s.summary      = "Gauge like widget views for iOS. With iOS 5 compatibility fixes."
  s.homepage     = "https://github.com/sabymike/MSSimpleGauge"
  s.screenshots  = "https://raw.github.com/sabymike/MSSimpleGauge/master/SimpleGauge/simple.png", "https://raw.github.com/sabymike/MSSimpleGauge/master/SimpleGauge/range.png", "https://raw.github.com/sabymike/MSSimpleGauge/master/SimpleGauge/annotated.png"
  s.license      = 'MIT'
  s.author       = { "Mike Sabatini" => "mike@parallelboxes.com" }
  s.source       = { :git => "https://github.com/paulz/MSSimpleGauge.git", :branch => "ios5" }
  s.platform     = :ios, '5.0'
  s.source_files = 'SimpleGauge/Gauges/*.{h,m}'
  s.frameworks = 'QuartzCore', 'UIKit', 'CoreGraphics', 'Foundation'
  s.requires_arc = true
end
