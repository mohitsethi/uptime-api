require 'uptime/call'

module Uptime
  class Checks
    self.resource = "api/checks"
    # attr_accessor :username, :password

    def self.all(filter={})
      response = Uptime::Call.execute(self.resource, :get)
    end

    def self.create(options={})
      Uptime::Call.execute(self.resource, :put, options)
    end


    def self.delete(check_id)
      Uptime::Call.execute("#{self.resource}/#{check_id}", :delete)
    end

    def self.update(check_id, options={})
      Uptime::Call.execute("#{self.resource}/#{check_id}", :post, options)
    end

  end
end