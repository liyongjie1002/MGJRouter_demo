
platform :ios, '8.0'
workspace 'Router-demo.xcworkspace'


def shared_pods
  
  pod 'MGJRouter'
end

target 'Router-demo' do
  use_frameworks!
  shared_pods
  
  target 'Test' do
    use_frameworks!
    project 'Router-demo/Test/Test.xcodeproj'
    shared_pods
  end
  
  target 'Second' do
    use_frameworks!
    project 'Router-demo/Second/Second.xcodeproj'
    shared_pods
  end
end
