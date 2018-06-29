require_relative 'links'
# lib/urli_me/init.rb
module UrliMe
  # class init access
  class Init
    include HTTParty
    include UrliMe::Links

    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end

    private

    def header_request
      {
        'key' => @key.to_s,
        'pwd' => @pwd.to_s,
        'Content-Type' => 'multipart/form-data'
      }
    end

    def links_url
      UrliMe::LINKS_URL
    end
  end
end
