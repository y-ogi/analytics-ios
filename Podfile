begin
  require File.expand_path('./scripts/build.rb')
rescue LoadError
  require File.expand_path('~/dev/segmentio/analytics-ios/scripts/build.rb')
end

inhibit_all_warnings!

def import_utilities
  pod 'TRVSDictionaryWithCaseInsensitivity', '0.0.2'
end

def import_pods
  Build.all_pods.each do |p|
    send :pod, p.name, p.version
  end
  import_utilities
end

target 'Analytics', :exclusive => true do
  import_pods
end

target 'iOS Tests', :exclusive => true do
  import_pods
end
