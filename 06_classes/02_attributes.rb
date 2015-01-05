# attributes
puts "\n***********************************\nattributes"

# getter/setter's are called reader/writer in ruby

class Animal
  # def set_noise(noise)
  #   @noise = noise
  # end
  def noise=(noise)
    @noise = noise
  end

  # def get_noise
  #   @noise
  # end
  def noise
    @noise
  end
end

cow = Animal.new
# cow.set_noise("Moo!")
cow.noise = "Moo!"
# puts cow.get_noise
puts cow.noise

duck = Animal.new
# quack.set_noise("Quack!")
duck.noise = "Quack!"
# puts duck.get_noise
puts duck.noise
