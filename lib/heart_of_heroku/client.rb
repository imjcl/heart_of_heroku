module HeartOfHeroku
  class Client
    def new token
      @auth_key = token
    end

    def account
      @account ||= Account.get_info(@auth_key)
    end
  end
end