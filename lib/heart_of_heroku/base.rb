module HeartOfHeroku
  class Base
    BASE_URI = "https://api.heroku.com"
    ACCEPT_HEADERS = "application/vnd.heroku+json; version=3"

    def find endpoint, option=''
      path = "#{BASE_URI}/#{endpoint}"
      path += "/#{option}" unless option.empty?
      JSON.parse RestClient.get "#{path}", accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}"
    end

    def create endpoint, option='', payload={}
      path = "#{BASE_URI}/#{endpoint}"
      path += "/#{option}" unless option.empty?
      # In this request, the 'payload' argument in this call is set to blank?
      JSON.parse RestClient.post "#{path}", payload, accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}"
    end

    def update endpoint, option='', payload={}
      puts path
      path = "#{BASE_URI}/#{endpoint}"
      path += "/#{option}" unless option.empty?
      JSON.parse RestClient.put "#{path}", payload, accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}"
    end
  end
end