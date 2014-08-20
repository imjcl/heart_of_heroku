module HeartOfHeroku
  class Account
    def self.get_info
     HeartOfHeroku::heroku_get "account"
    end
  end
end