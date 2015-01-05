# initialize method (constructor)
puts "\n***********************************\ninitialize method"

class Animal
  attr_reader :legs, :arms	# get only

  # def initialize
  # 	@legs = 4
  # 	@arms = 0
  # 	puts "New animal instance created"
  # end
  def initialize(legs=4, arms=0)
    @legs = legs
    @arms = arms
    puts "New animal instance created"
  end
end

# animal = Animal.new
animal = Animal.new(2,2)
puts animal.legs, animal.arms

animal = Animal.new
puts animal.legs, animal.arms
