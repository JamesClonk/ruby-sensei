# inject/fold/reduce (accumulate)
puts "\n***********************************\ninject/fold/reduce"
xs = (1..5).inject { |acc, n| acc + n }
puts xs

ys = (1..5).reduce { |acc, n| acc + n }
puts ys

# fold alias
module Enumerable
  alias fold inject
end
zs = (1..5).fold { |acc, n| acc + n }
puts zs

# initial value
puts (1..5).inject(-1) { |acc, n| acc * n }
puts (1..5).reduce(-1) { |acc, n| acc * n }
puts (1..5).fold(-1) { |acc, n| acc * n }

puts (1..5).fold(0) { |acc, n| n % 2 == 0 ? acc + n : acc }

