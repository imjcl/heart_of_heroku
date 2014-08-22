module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
      @endpoint = "account"
      super
    end
  end
end