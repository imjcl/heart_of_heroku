require "rest-client"
require "json"

require "heart_of_heroku/account"
require "heart_of_heroku/apps"
require "heart_of_heroku/client"

module HeartOfHeroku
  class Base
    BASE_URI = "https://api.heroku.com"
    ACCEPT_HEADER = "application/vnd.heroku+json; version=3"

    def find options = {}
      JSON.parse RestClient.get "#{BASE_URI}/#{endpoint}", accept: ACCEPT_HEADER, authorization: "Bearer #{@auth_key}"  
    end
  end
end