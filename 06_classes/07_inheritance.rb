# class inheritance
puts "\n***********************************\nclass inheritance"

class Animal
  attr_accessor :noise

  def make_noise
    @noise
  end

  def initialize(noise)
    @noise = noise
  end
end

class Cow < Animal
  def make_noise
    "Cow says #{@noise}"
  end
end

class Duck < Animal
  def fly
    'I\'m flying!'
  end

  def make_noise
    parent_noise = super
    "Duck says #{parent_noise}"
  end
end

animal = Animal.new('...')
puts animal.make_noise

cow = Cow.new('Moo!')
puts cow.make_noise

duck = Duck.new('Quack!')
puts duck.make_noise, duck.fly

puts animal.class, cow.class, duck.class


# overriding
puts "\n***********************************\noverriding"

class Array
  def to_s
    self.join(';')
  end
end

puts [1, 2, 3].to_s
