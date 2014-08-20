require "rest-client"
require "json"

require "heart_of_heroku/account"

module HeartOfHeroku
  BASE_URI = "https://api.heroku.com"
  ACCEPT_HEADER = "application/vnd.heroku+json; version=3"
  def self.hi
    puts "Hello world!"
  end

  def self.set_auth_key token
    AUTH_KEY = token
  end
end