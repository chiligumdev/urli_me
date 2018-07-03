require 'urli_me'
# lib/urli_me/links.rb
module UrliMe
  # class related to request links
  module Links
    def all_links
      response = HTTParty.get(links_url, headers: header_request)
      response
    end

    def get_link(token)
      response = HTTParty.get(links_url + '/' + token, headers: header_request)
      response
    end

    def create_link(link)
      response = HTTParty.post(links_url, query: query_link(link),
                                          headers: header_request)
      response
    end

    def update_link(token, link)
      response = HTTParty.patch(links_url + '/' + token,
                                query: query_link(link),
                                headers: header_request)
      response
    end

    def delete_link(token)
      response = HTTParty.delete(links_url + '/' + token,
                                 headers: header_request)
      response
    end

    private

    def query_link(link)
      {
        link: {
          original_url: link
        }
      }
    end
  end
end
