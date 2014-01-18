require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'middleman-tako'
require 'aruba/cucumber'
require 'middleman-core/step_definitions'
require 'test/unit/assertions'

World(Test::Unit::Assertions)
