require 'httparty'
require 'byebug'
require 'urli_me/version'
require 'urli_me/init'

# lib/urli_me.rb
module UrliMe
  class << self
    def demodulize_class(class_name)
      return nil unless class_name
      class_name.to_s.split('::').last.downcase
    end
  end
end
