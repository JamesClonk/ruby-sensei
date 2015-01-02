# return values
puts "\n***********************************\nreturn values"

def world
  'world!'
end

puts "Hello #{world}"
puts world

def greetings
  return 'Hello world!'
  puts 'nope..'
end

puts greetings

def tuples
  [2, 'beta']
end

puts tuples.inspect

x, y, z = tuples
puts x, y, z.inspect

_, z = tuples
puts z

class Array
  def _1
    self.length == 0 ? nil : self[0]
  end

  def _2
    self.length < 2 ? nil : self[1]
  end
end

puts tuples._2
puts tuples._1
puts [1]._2.inspect

