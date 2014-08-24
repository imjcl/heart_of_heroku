module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def app id=''
      endpoint = "apps"
      if id.empty?
        find endpoint
      else
        find endpoint, id
      end
    end

    def addon_service id=''
      endpoint = "addon-services"
      if id.empty?
        find endpoint
      else
        find endpoint, id
      end
    end
  end
end