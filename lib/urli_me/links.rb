# lib/urli_me/links.rb
module UrliMe
  # class related to request links
  module Links
    def all_links
      HTTParty.get(links_url, headers: header_request)
    end
  end
end
