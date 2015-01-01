# booleans
puts "\n***********************************\nbooleans"
x = 123
puts x == 321, x != 123, x <= 100, x >= 100, !x
puts true.class, false.class
puts 1 < 2 && 2 > 1, 1 > 2 || 2 > 1
puts 2.between?(1, 3)

puts x.nil?
x = nil
puts x.nil?

puts [1, 2, 3].empty?, [].empty?, [1, 2, 3].include?(4)
puts ({:one => 1, :two => 2}).has_key?(:one)

