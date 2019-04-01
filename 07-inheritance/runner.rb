require_relative "animal"
require_relative "fish"
require_relative "dog"
require_relative "cat"
require "pry"

dory = Fish.new("Dory")
elliott = Cat.new("Elliott")
einstein = Dog.new("Einstein")
bukas = Cat.new("Bukas")

binding.pry
