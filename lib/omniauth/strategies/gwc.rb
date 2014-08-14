require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Gwc < OmniAuth::Strategies::OAuth2

      uid { raw_info['id'] }

      info do
        {
          :email => raw_info['email']
        }
      end

      extra do
        {
          :first_name => raw_info['extra']['first_name'],
          :last_name  => raw_info['extra']['last_name']
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/auth/gwc/user.json?oauth_token=#{access_token.token}").parsed
      end
    end
  end
end