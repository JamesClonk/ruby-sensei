# basic io
puts "\n***********************************\nbasic io"

input = gets
print input
print input.chomp
print "Something..\r\n"
print "Something..\r\n".chomp

input = gets.chomp
print input

result = ""
until result == "quit"
  print "> "
  result = gets.chomp
  puts "echo: #{result}" unless result == "quit"
end
puts "Bye!"
