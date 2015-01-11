# namespace
puts "\n***********************************\nnamespace"

module Animals
  class Animal
  end

  class Cow < Animal
  end
end

cow = Animals::Cow.new
puts cow.class
