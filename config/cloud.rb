ENV['base_url'] ||= 'https://demo.aconex.com'
ENV['username'] = 'poleary'
ENV['password'] = 'Ch3ckl1sts'

ENV['host'] ||= 'saucelabs'
ENV['operating_system'] ||= 'Windows XP'
ENV['browser'] ||= 'internet_explorer'
ENV['browser_version'] ||= '8'

ENV['SAUCE_USERNAME'] = 'satishautade'
ENV['SAUCE_ACCESS_KEY'] = 'b38d994a-40a5-4ac9-84de-1e23c4a26457'
ENV['processes'] = '2'
ENV['tunnel'] ||= ''

unless ENV['tunnel'].empty?
  require 'sauce'

  Sauce.config do |c|
    c[:start_tunnel] = true
    #this path has to be concrete.setting this path through env var will not help much
    c[:sauce_connect_4_executable] = '/home/satish/Downloads/sc-4.3.10-linux/bin/sc'
  end

  #sauce_connect_4_executable
  Sauce::Utilities::Connect.start
  ENV['base_url'] = 'https://aconex-local:8443'
  ENV['password'] = 'ac0n3x72'
end