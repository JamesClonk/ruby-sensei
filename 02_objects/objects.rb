# variables
puts "\n***********************************\nvars"
a = 1
b = a + 2
puts a, b

# variable scope indicators
$i_am_global = 1
@@i_am_class = 2
@i_am_instance = 3
i_am_local = 4
puts $i_am_global + @@i_am_class + @i_am_instance + i_am_local


# ints
puts "\n***********************************\nints"
x = 1
y = 2 + x
z = (3 / y + 1) * 2
z += 1
z **= 2
puts "expected 24, is #{z-1}"
puts 1234.class, 12345678901234567890.class
puts -123, -123.abs, -123.next
puts 1_2_3_4, 123_4.div(2)


# floats
puts "\n***********************************\nfloats"
puts 123.456, 123.456.class
puts a.class
a += 1.0
puts a.class

puts 10 / 3
puts 10.0 / 3
puts 12345.67890.round, 12345.67890.to_i, 12345.67890.floor, 12345.67890.ceil


# strings
puts "\n***********************************\nstrings"
world = 'World!'
hello_world = "Hello"
hello_world += ' ' + world
goodbye = 'Goodbye!'

puts hello_world, goodbye
puts 'ACGT' * 5, '1' * 5

puts '\'', "\"", "\\"
puts "--- #{hello_world} ---"
puts "1 + 2 = #{1 + 2}"

puts hello_world.reverse.upcase, hello_world.capitalize, hello_world.downcase
puts hello_world.length


# arrays
puts "\n***********************************\narrays"
array_one = Array.new
array_two = []
array_three = ["a", "b", 'c']
array_four = %w[a b c]
puts array_one, array_two.class, array_three.join, array_four.join(';')
puts [array_three[2], array_four[1], array_three.first].join(';')

array_four[0] = 'x'
array_four[1] = 'y'
array_four[2] = 'z'
puts array_four.reverse.join

array_three << 'd' # push/append
puts array_three.last, array_three.length

array_three[1] = nil
puts array_three.pop, array_three.join(';')

array_three.clear
puts array_three.inspect, array_three.class
array_three = nil
puts array_three.inspect, array_three.class

array_five = [1, "2", 3.0, ['a', 'b', 'c'], "world!"]
puts array_five.inspect, array_five.to_s, array_five.join(',')
puts array_five.join(';').split(';').inspect
puts array_five.shuffle.inspect

puts array_five.delete_at(1)
puts array_five.delete('world!')
puts array_five.push(5).inspect

array_six = [1, 1, 2, 2, 2]
puts array_six.uniq.inspect
puts array_six.inspect
array_six.uniq!
puts array_six.inspect

puts (array_five + array_six).to_s
puts (array_five - array_six).to_s


# hashes
puts "\n***********************************\nhashes"
xs = {}
puts xs.class

xs = {'Name' => 'Ruby', :Type => 'Programming Language'}
puts xs, xs['Name'], xs[:Type]
puts xs.key('Ruby')

xs['Version'] = '2.1.5'
puts xs, xs.keys.to_s, xs.values.to_s, xs.length
puts xs.to_a.to_s
puts xs.clear


# symbols
puts "\n***********************************\nsymbols"
a = :abc
b = "abc"
puts [a.object_id, b.object_id].join(", ")
x = :abc
y = "abc"
puts [x.object_id, y.object_id].join(", ")

# use symbols as keys in hashes
hash = {:Name => 'Ruby', :Version => '2.1.5'}
puts hash, hash[:Name], hash['Name'.to_sym]


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


# ranges
puts "\n***********************************\nranges"
puts (1..10).class
a = 1..10 # inclusive (1 to 10)
b = 1...10 # exclusive (1 to 9)
puts a.begin, a.end, a.first, a.last
puts b.begin, b.end, b.first, b.last
puts a.include?(10), b.include?(10)
puts a, b
puts [*a].join(","), [*b].join(",") # expand/splat

x = 'a'..'i'
puts x.include?('g'), [*x].to_s


# constants
puts "\n***********************************\nconstants"
ALPHA = 1
Beta = 2
ALPHA = 3 # gives warning, but still works
puts ALPHA, Beta

