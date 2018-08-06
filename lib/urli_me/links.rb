require 'urli_me'
# lib/urli_me/links.rb
module UrliMe
  # class related to request links
  module Links
    def all_links
      HTTParty.get(links_url, headers: header_request)
    end

    def get_link(token)
      HTTParty.get(links_url + '/' + token, headers: header_request)
    end

    def create_link(link)
      HTTParty.post(links_url, query: query_link(link),
                               headers: header_request)
    end

    def update_link(token, link)
      HTTParty.patch(links_url + '/' + token, query: query_link(link),
                                              headers: header_request)
    end

    def delete_link(token)
      HTTParty.delete(links_url + '/' + token, headers: header_request)
    end

    private

    def query_link(link)
      { original_url: link }
    end
  end
end
