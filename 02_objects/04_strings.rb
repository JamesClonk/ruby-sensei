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

