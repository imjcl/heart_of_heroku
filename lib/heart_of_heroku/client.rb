module HeartOfHeroku
  class Client < HeartOfHeroku::Base
    def initialize auth_key
      @auth_key = auth_key
    end
  end
end