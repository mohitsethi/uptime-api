require 'uptime/call'

module Uptime
  class Checks
    # attr_accessor :username, :password

    def self.all
      response = Uptime::Call.execute("api/checks", :get)
    end

  end
end