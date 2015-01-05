# class instance
puts "\n***********************************\nclass instance"

class Animal
  def make_noise
    "Moo!"
  end
end

animal = Animal.new
puts animal.make_noise
puts animal.make_noise()
puts animal.make_noise.upcase
