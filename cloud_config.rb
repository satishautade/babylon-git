ENV['base_url'] ||= 'https://demo.aconex.com'
ENV['username'] = 'poleary'
ENV['password'] = 'Ch3ckl1sts'

ENV['host'] ||= 'saucelabs'
ENV['operating_system'] ||= 'Windows XP'
ENV['browser'] ||= 'internet_explorer'
ENV['browser_version'] ||= '8'

ENV['SAUCE_USERNAME'] = 'satishautade'
ENV['SAUCE_ACCESS_KEY'] = 'b38d994a-40a5-4ac9-84de-1e23c4a26457'
ENV['tunnel'] ||= ''

if ENV['tunnel'].empty?
  require 'sauce'
  Sauce::Utilities::Connect.start
  ENV['base_url'] = 'http://aconex-local:8443'
end