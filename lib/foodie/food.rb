require 'active_support/inflector'

module Foodie
  class Error < StandardError; end
  class Food

    def self.potray (food)
      if food == "Broccoli"
         "Gross!"
      else
         "Delicious!"
      end
    end

    def self.pluralize(word)
        word.pluralize
    end

  end
end
