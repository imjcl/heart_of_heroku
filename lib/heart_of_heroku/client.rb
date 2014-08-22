module HeartOfHeroku
  class Client < Base
    def initialize token
      super
      @auth_key = token
      @endpoint = "account"
    end
  end
end