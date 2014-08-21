module HeartOfHeroku
  class Account
    def self.get_info auth_key
     HeartOfHeroku::heroku_get "account", auth_key
    end
  end
end