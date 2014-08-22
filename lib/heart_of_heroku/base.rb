module HeartOfHeroku
  class Base
    def initialize
      @base_uri = "https://api.heroku.com/"
      @accept_headers = "application/vnd.heroku+json; version=3"
    end
    
    def find options={}
      JSON.parse RestClient.get "#{@base_uri}/#{@endpoint}", accept: @accept_headers, authorization: "Bearer #{@auth_key}"
    end
  end
end