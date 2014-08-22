module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def app option=''
      find "apps" if id.empty?
      find "apps", id
    end
  end
end