use_frameworks!

platform :ios, '14.0'

inhibit_all_warnings!

source 'https://cdn.cocoapods.org/'

target "Venue" do

  pod "SDAO", :git => 'https://github.com/Incetro/DAO'
  pod "Monreau", :git => 'https://github.com/Incetro/Monreau'
  pod "Swinject", :git => 'https://github.com/Swinject/Swinject'

end

post_install do |installer|
  # This removes the warning about swift conversion, hopefuly forever!
  installer.pods_project.root_object.attributes['LastSwiftMigration'] = 9999
  installer.pods_project.root_object.attributes['LastSwiftUpdateCheck'] = 9999
  installer.pods_project.root_object.attributes['LastUpgradeCheck'] = 9999
  installer.pods_project.targets.each do |t|
    t.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
    end
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['GCC_WARN_INHIBIT_ALL_WARNINGS'] = "YES"
      end
    end
  end
  installer.pods_project.build_configurations.each do |config|
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end
end