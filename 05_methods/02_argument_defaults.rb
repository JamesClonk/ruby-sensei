# argument defaults
puts "\n***********************************\nargument defaults"

def greetings_with_arg(value='world!')
  puts "Hello #{value}"
end

greetings_with_arg
greetings_with_arg()
greetings_with_arg('world!!!')

def add(a=1, b=2)
  a + b
end

puts add(5, 5)
puts add(5)

def longest_string(list=[])
  list.reduce { |acc, s| s.length > acc.length ? s : acc }
end

xs = ["alpha", "beta", "charlie", "delta"]
puts longest_string
puts longest_string(xs)

