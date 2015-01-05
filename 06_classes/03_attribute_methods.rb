# attribute methods (attr_*)
puts "\n***********************************\nattribute methods"

class Animal
  attr_accessor :name			# get & set
  attr_writer :color			# set only
  attr_reader :legs, :arms	# get only

  def setup_limbs
    @legs = 4
    @arms = 0
  end

  def color
    "The color is #{@color}"
  end
end

animal = Animal.new
animal.name = "Scooby Doo"
puts animal.name

animal.setup_limbs
animal.color = "brown"
puts animal.color, animal.legs, animal.arms
