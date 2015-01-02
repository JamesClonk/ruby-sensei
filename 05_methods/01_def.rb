# def methods
puts "\n***********************************\ndef methods"

def greetings
  puts 'Hello world!'
end

greetings

def greetings_with_arg(value)
  puts "Hello #{value}"
end

greetings_with_arg('world!!!')

def longest_string(list)
  list.reduce { |acc, s| s.length > acc.length ? s : acc }
end

xs = ["alpha", "beta", "charlie", "delta"]
puts longest_string(xs)

class Numeric
  def uneven?
    self % 2 != 0
  end
end

puts 1.uneven?
puts 2.uneven?

def uneven?(num)
  num % 2 != 0
end

puts uneven?(3), uneven?(4)

def pop!(list) # lol
  raise TypeError, 'Expected Array' unless list.is_a? Array
  x = 0
  xs = list.reduce([]) { |acc, e| x += 1; x == 1 ? acc : acc + [e] }
  list.clear
  list.concat(xs)
end

xs = [1, 2, 3]
pop!(xs)
puts xs.to_s

