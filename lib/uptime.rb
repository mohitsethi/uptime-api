require "uptime/version"
require 'uptime/checks'
require 'gem_config'

module Uptime
  include GemConfig::Base

  with_configuration do 
    has :api_endpoint, classes: String, default: ENV['UPTIME_ENDPOINT'].to_s
    has :username, classes: String, default: ENV['UPTIME_USERNAME'].to_s
    has :password, classes: String, default: ENV['UPTIME_PASSWORD'].to_s
  end
end
