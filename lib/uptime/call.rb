require 'uptime'
require 'json'
require 'rest-client'

module Uptime
  Error = Class.new StandardError

  module Call

    def self.execute(resource, method, payload={})
      puts "username: #{Uptime.configuration.username}"
      puts "password; #{Uptime.configuration.password}"
      puts "api_endpoint: #{Uptime.configuration.api_endpoint}"
      username = Uptime.configuration.username
      password = Uptime.configuration.password
      api_endpoint = Uptime.configuration.api_endpoint
      puts "resource: #{resource}"
      endpoint = api_endpoint + resource
      puts "endpoint: #{endpoint}"
      puts "method: #{method}"

      RestClient::Request.execute(
                                    method: method,
                                    url: endpoint, 
                                    user: username,
                                    password: password,
                                    payload: payload
                                  )
    rescue RestClient::BadRequest, RestClient::Unauthorized, RestClient::ResourceNotFound => e
      result = (JSON.parse(e.response) rescue {})
      # raise Uptime::Error.new(result['error'] || e.reponse)
      raise e.response

    end


    def self.resource
      endpoint = 'https://Uptime.io/api/'
      RestClient::Resource.new endpoint, headers: { 'X-API-KEY' => Uptime.configuration.api_endpoint }
    end

    def self.checks
      process { Call.resource['checks'].get }
    end

    def self.downtimes(token, filters={})
      process { Call.resource["checks/#{token}/downtimes"].get(params: filters) }
    end

    def self.create_check(attributes={})
      process { Call.resource['checks'].post(attributes) }
    end

    def self.update_check(token, attributes={})
      process { Call.resource["checks/#{token}"].put(attributes) }
    end

    def self.destroy_check(token)
      process { Call.resource["checks/#{token}"].delete }
    end

    def self.process
      JSON.parse yield
    rescue RestClient::BadRequest, RestClient::Unauthorized, RestClient::ResourceNotFound => e
      result = (JSON.parse(e.response) rescue {})
      raise Uptime::Error.new(result['error'] || e.reponse)
    end

  end
end