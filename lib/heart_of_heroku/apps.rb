module HeartOfHeroku
  class Apps
    def self.get_apps
      HeartOfHeroku::heroku_get "apps"
    end

    def self.get_app id_name
      HeartOfHeroku::heroku_get "apps/#{id_name}"
    end
  end
end