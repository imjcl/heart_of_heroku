module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def app id=''
      if id.empty?
        find "apps"
      else
        find "apps", id
      end
    end
  end
end