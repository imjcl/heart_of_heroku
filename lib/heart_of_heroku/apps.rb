module HeartOfHeroku
  class Apps
    def self.get_apps
      RestClient.get "#{BASE_URI}/apps", accept: "#{ACCEPT_HEADER}"
    end
  end
end