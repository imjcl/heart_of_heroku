module HeartOfHeroku
  class Apps
    def self.get_apps auth_key
      HeartOfHeroku::heroku_get "apps", auth_key
    end

    def self.get_app id_name, auth_key
      HeartOfHeroku::heroku_get "apps/#{id_name}", auth_key
    end
  end
end