module HeartOfHeroku
  class Client < Base
    @endpoint = "account"
    def initialize token
      @auth_key = token
    end
  end
end