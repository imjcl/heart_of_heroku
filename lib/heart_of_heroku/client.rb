module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
      @endpoint = "account"
    end
  end
end