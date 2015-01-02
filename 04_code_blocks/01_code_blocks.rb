# code blocks
puts "\n***********************************\ncode blocks"
3.times do
  puts '3!'
end
3.times { puts '3!' }

1.upto(3) do |x|
  puts x
end
1.upto(3) { |x| puts x }

# block scoping
x = 2
y = 2
[1, 2, 3, 4, 5].each do |x|
  puts x ** y
end
puts x
