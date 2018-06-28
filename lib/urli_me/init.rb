# lib/urli_me/init.rb
module UrliMe
  # class init access
  class Init
    def initialize(options = {})
      options.each do |key, value|
        instance_variable_set("@#{key}", value)
      end
    end
  end
end
