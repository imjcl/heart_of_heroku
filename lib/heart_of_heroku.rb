require "rest-client"
require "heart_of_heroku/account"

module HeartOfHeroku
  BASE_URI = "https://api.heroku.com"
  ACCEPT_HEADER = "application/vnd.heroku+json; version=3"
  def self.hi
    puts "Hello world!"
  end
end