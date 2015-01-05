# class methods (statics)
puts "\n***********************************\nclass methods"

class Animal
  attr_accessor :noise

  def self.species
    ["cat","cow","dog","duck"]
  end

  def self.create_animal(noise)
    animal = self.new(noise)
    # animal.noise = noise
    animal
  end

  def initialize(noise)
    @noise = noise
  end
end

puts Animal.species.to_s

animal = Animal.create_animal("Moo!")
puts animal.noise
