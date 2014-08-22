module HeartOfHeroku
  class Base
    BASE_URI = "https://api.heroku.com"
    ACCEPT_HEADERS = "application/vnd.heroku+json; version=3"

    def find options={}
      JSON.parse RestClient.get "#{BASE_URI}/#{@endpoint}", accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}"
    end
  end
end