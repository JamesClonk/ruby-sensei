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
