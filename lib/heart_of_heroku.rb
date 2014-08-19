require "rest-client"
require "heart_of_heroku/account"

module HeartOfHeroku
  BASE_URI = "https://api.heroku.com"
  def self.hi
    puts "Hello world!"
  end
end