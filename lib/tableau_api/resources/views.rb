# frozen_string_literal: true

module TableauApi
  module Resources
    class Views < Base
      def list(**params)
        url = "sites/#{@client.auth.site_id}/views"
        @client.connection.api_get_collection(url, 'views.view', **params)
      end

      def image(view_id:)
        url = "sites/#{@client.auth.site_id}/views/#{view_id}/image"
        res = @client.connection.api_get(url)
        res.body if res.code == 200
      end
    end
  end
end
