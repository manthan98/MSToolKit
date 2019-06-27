Pod::Spec.new do |spec|
  spec.name         = "MSToolKit"
  spec.version      = "1.0.2"
  spec.summary      = "A library of UI components to speed up iOS development."
  spec.description  = "This is a library of UI related extensions and components to prevent code pollution and duplication when building common elements."
  spec.homepage     = "https://github.com/manthan98/MSToolKit"
  spec.license      = "MIT"
  spec.author             = { "Manthan Shah" => "manthan711@gmail.com" }
  spec.platform     = :ios, "12.1"
  spec.ios.deployment_target = '12.1'
  spec.source       = { :git => "https://github.com/manthan98/MSToolKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "MSToolKit", "MSToolKit/**/*.swift"
  spec.swift_version = '4.2'
end
