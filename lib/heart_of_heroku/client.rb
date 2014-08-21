module HeartOfHeroku
  class Client
    def initialize token
      @auth_key = token
    end

    def account
      @account ||= Account.get_info(@auth_key)
    end

    def list_apps
      @apps ||= Apps.get_apps(@auth_key)
    end
  end
end