# operators
puts "\n***********************************\noperators"
puts 1.+(2)
puts 5.*(3)

class Numeric
  def multiplication_by(x=0)
    self.*(x)
  end
end

puts 5.multiplication_by(4)

xs = [1, 2, 3]
puts xs.[](2)

xs.[]=(2, 10)
puts xs.[](2)

