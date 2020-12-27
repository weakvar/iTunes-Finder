platform :ios, '12.0'

target 'iTunes Finder' do
  use_frameworks!

  pod 'TinyConstraints'
  pod 'SwiftyJSON', '~> 4.0'
  pod 'Nuke', '~> 9.0'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      end
    end
  end

end
