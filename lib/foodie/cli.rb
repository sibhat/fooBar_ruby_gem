require 'thor'
require 'foodie'
require 'foodie/generators/recipe'

module Foodie
  class CLI < Thor
    desc "potray ITEM", "Determines if a piece of food is gross or delicious"
    def potray(name)
        puts Foodie::Food.potray(name)
    end

    desc "pluralize", "Pluralizes a word"
    method_option :word, aliases: "-w"
    def pluralize
        puts Foodie::Food.pluralize(options[:word])
    end 

    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
        Foodie::Generators::Recipe.start([group, name])
    end
  end
end