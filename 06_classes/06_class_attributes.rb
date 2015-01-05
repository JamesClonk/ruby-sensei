# class attributes (statics)
puts "\n***********************************\nclass attributes"

class Animal
  attr_accessor :noise
  attr_reader :current_animals

  @@species = ["cat","cow","dog","duck"]
  @@current_animals = []

  def self.species
    @@species
  end

  def self.species=(values=[])
    @@species = values
  end

  def self.current_animals
    @@current_animals
  end

  def initialize
    @@current_animals << self
  end
end

puts Animal.species.to_s
Animal.species = Animal.species << "frog" << "fish"
puts Animal.species.to_s

cow = Animal.new
cow.noise = "Moo!"

dog = Animal.new
dog.noise = "Bark!"

puts Animal.current_animals.inspect
