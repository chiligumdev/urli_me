require 'httparty'
require 'byebug'
require_relative 'urli_me/version'
require_relative 'urli_me/init'
require_relative 'urli_me/links'

# lib/urli_me.rb
module UrliMe
  class << self
    def demodulize_class(class_name)
      return nil unless class_name
      class_name.to_s.split('::').last.downcase
    end
  end
end
