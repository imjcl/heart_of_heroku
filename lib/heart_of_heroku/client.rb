module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def app id=''
      find "apps" if id.empty?
      find "apps", id unless id.empty?
    end
  end
end