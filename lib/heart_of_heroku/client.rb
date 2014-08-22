module HeartOfHeroku
  class Client < Base
    def initialize auth_key
      @auth_key = auth_key
    end
  end
end