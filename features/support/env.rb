require "pry"
require "rspec"
require 'httparty'
require 'faker'

if ENV['ENVIRONMENT'] == nil || ENV['ENVIRONMENT'].empty?
  ENV['ENVIRONMENT'] = 'PRODUCAO'
end

PATHS              = YAML.load_file("config/paths.yml")
HOSTS              = YAML.load_file("config/hosts.yml")[ENV['ENVIRONMENT'].downcase]

service = lambda {|klass| klass.new}

Before do
  @service = service
end

#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE