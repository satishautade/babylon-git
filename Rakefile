def launch_in_parallel(config_file)
  system("parallel_rspec #{'-n ' + ENV['processes'] if ENV['processes']} --test-options '-r ./#{config_file} --order random' spec")
end

namespace :local do

  desc 'Run tests in local Firefox'
  task :firefox do
    ENV['browser'] = 'firefox'
    launch_in_parallel ('config/local.rb')
  end

  desc 'Run tests in local Chrome'
  task :chrome do
    ENV['browser'] = 'chrome'
    launch_in_parallel ('config/local.rb')
  end
end

namespace :cloud do

  desc 'Run tests in IE, by Version'
  task :ie, :version, :os  do |t,args|
    ENV['browser']= 'internet_explorer'
    ENV['browser_version'] = args[:version]
    ENV['operating_system'] = args[:os]
    launch_in_parallel('./config/cloud.rb')
  end

  desc 'Run tests in Safari, by Version'
  task :safari, :version, :os  do |t,args|
    ENV['browser']= 'safari'
    ENV['browser_version'] = args[:version]
    ENV['operating_system'] = args[:os]
    launch_in_parallel('./config/cloud.rb')
  end

  desc 'Run tests in Firefox, by Version'
  task :firefox, :version do |t,args|
    ENV['browser']= 'firefox'
    ENV['browser_version'] = args[:version]
    launch_in_parallel('./config/cloud.rb')
  end

  desc 'Run tests in Chrome, by Version'
  task :chrome, :version do |t,args|
    ENV['browser']= 'chrome'
    ENV['browser_version'] = args[:version]
    launch_in_parallel('./config/cloud.rb')
  end

  desc 'Run tests against local app in sauce cloud'
  task :tunnel do
    ENV['tunnel'] = 'on'
    launch_in_parallel('./config/cloud.rb')
  end

end
