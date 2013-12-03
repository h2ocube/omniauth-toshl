require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Toshl < OmniAuth::Strategies::OAuth2
      option :name, 'toshl'

      option :client_options, { site: 'https://api.toshl.com', authorize_url: 'https://toshl.com/oauth2/authorize', token_url: 'https://toshl.com/oauth2/token'}

      uid{ raw_info['id'] }

      info do
        {
          name: raw_info['name'],
          email: raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end
