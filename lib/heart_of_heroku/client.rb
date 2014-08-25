module HeartOfHeroku
  class Client < Base
    def initialize token
      @auth_key = token
    end

    def account
      find "account"
    end

    def app id=''
      endpoint = "apps"
      if id.empty?
        find endpoint
      else
        find endpoint, id
      end
    end

    def app_create
      endpoint = "apps"
      create endpoint
    end

    def addon_service id=''
      endpoint = "addon-services"
      if id.empty?
        find endpoint
      else
        find endpoint, id
      end
    end

    def app_addon app_id, addon_id = ''
      endpoint = "apps/#{app_id}/addons"
      if addon_id.empty?
        find endpoint
      else
        find endpoint, addon_id
      end      
    end

    def addon_create id
      endpoint = "apps/#{app_id}/addons"
      find endpoint, id
    end

    def app_config_vars id
      endpoint = "apps/#{id}/config-vars"
      find endpoint
    end
  end
end