require 'urli_me'
require 'urli_me/links'
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
        'external-id' => @external_id.to_s,
        'Content-Type' => 'multipart/form-data'
      }
    end

    def links_url
      UrliMe::ALLOWED_URLS.include?(@url) ? @url : UrliMe::DEFAULT_URL
    end
  end
end
