module HeartOfHeroku
  class Account
    def self.get_info token
      RestClient.get "#{BASE_URI}/account", accept: "#{ACCEPT_HEADER}", authorization: "Bearer #{token}"
    end
  end
end