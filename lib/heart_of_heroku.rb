require "rest-client"
require "json"

require "heart_of_heroku/client"

module HeartOfHeroku
  class Base
    self.base_uri = "https://api.heroku.com"
    self.accept_header = "application/vnd.heroku+json; version=3"
    self.endpoint = ''

    def find options = {}
      JSON.parse RestClient.get "#{base_uri}/#{endpoint}", accept: accept_header, authorization: "Bearer #{@auth_key}"  
    end
  end
end