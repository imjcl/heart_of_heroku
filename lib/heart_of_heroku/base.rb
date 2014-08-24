module HeartOfHeroku
  class Base
    BASE_URI = "https://api.heroku.com"
    ACCEPT_HEADERS = "application/vnd.heroku+json; version=3"

    def find endpoint, option=''
      path = "#{BASE_URI}/#{endpoint}"
      path += "/#{option}" unless option.empty?
      JSON.parse RestClient.get "#{path}", accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}"
    end

    def create endpoint, option=''
      path = "#{BASE_URI}/#{endpoint}"
      path += "/#{option}" unless option.empty?
      JSON.parse RestClient.post "#{path}", accept: ACCEPT_HEADERS, authorization: "Bearer #{@auth_key}", content_type: :json
    end
  end
end