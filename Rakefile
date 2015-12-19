require 'bundler/gem_tasks'
require 'rest-client'

task :test_api do 

  url = 'http://10.63.22.214:8082/api/checks'
  user = 'admin'
  password = 'admin!@#'
  restclient = RestClient::Resource.new(
    url, # URL
    user,
    password
  )
  # puts restclient.inspect

  puts RestClient::Request.execute method => :get, url => url, user => user, password => password
  # response = restclient.get
  puts '===================='
  # puts response.inspect
  # puts RestClient.get(url, user => 'admin', password => 'admin!@#')

end

task :test_api_create do 

  url = 'http://10.63.22.214:8082/api/checks'
  user = 'admin'
  password = 'admin!@#'
  restclient = RestClient::Resource.new(
    url, # URL
    user,
    password
  )
  # puts restclient.inspect

  # "name" => "trueman-stage2-tomcat-test",
  #   "type" => "http",
  #   "url" => "http://10.63.218.110:8080/trueman-data-services",
  #   "tags" => [
  #     "trueman-stage",
  #     "trueman-stage2"
  #   ],
  #   "alertTreshold" => 2,
  #   "maxTime" => 1500,
  #   "interval" => 20000

  puts RestClient::Request.execute(
                                    method: :put,
                                    url: url, 
                                    user: user,
                                    password: password,
                                    payload: {
                                                "name" => "trueman-stage2-tomcat-test",
                                                "type" => "http",
                                                "url" => "http://10.63.218.110:8080/trueman-data-services",
                                                "tags" => [
                                                  "trueman-stage",
                                                  "trueman-stage2"
                                                ],
                                                "alertTreshold" => 2,
                                                "maxTime" => 1500,
                                                "interval" => 20000
                                              }
                                  )
  # response = restclient.get
  puts '===================='
  # puts response.inspect
  # puts RestClient.get(url, user => 'admin', password => 'admin!@#')

end
