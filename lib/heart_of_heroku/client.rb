module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def apps
      find "apps"
    end
  end
end