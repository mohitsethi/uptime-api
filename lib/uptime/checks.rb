require 'uptime/call'

module Uptime
  class Checks
    # attr_accessor :username, :password

    def self.all(filter={})
      response = Uptime::Call.execute("api/checks", :get)
    end

    def self.create(options={})
      Uptime::Call.execute("api/checks", :put, options)
    end


    def self.delete(check_id)
      Uptime::Call.execute("api/checks#{check_id}", :delete)
    end

    def self.update(check_id, options={})
      Uptime::Call.execute("api/checks#{check_id}", :post, options)
    end

  end
end