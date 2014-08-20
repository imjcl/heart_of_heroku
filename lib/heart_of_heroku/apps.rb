module HeartOfHeroku
  class Apps
    def self.get_apps
      HeartOfHeroku::heroku_get "apps"
    end
  end
end