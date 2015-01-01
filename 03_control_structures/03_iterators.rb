# iterators
puts "\n***********************************\niterators"
3.times do
  puts '1'
end
3.times {puts '2'}

1.upto(3) {puts '3'}
3.downto(1) {puts '4'}

1.upto(3) do |x|
  puts x
end
1.upto(3) {|x| puts x * 2}


# each
puts "\n***********************************\neach"
xs = [1,2,3,4,5]

xs.each {|y|
  puts y
}
xs.each do |y|
  next if y % 2 == 0
  puts y ** 2
end

xs.each {|y| puts y + 1}
xs.each do |y| puts y end

(1..10).each {|x| puts x unless x % 2 == 0}


# for (syntactic sugar for "each")
puts "\n***********************************\nfor"
for num in xs
  break unless num < 4
  puts num + 10
end


# map
puts "\n***********************************\nmap"
ys = [1,2,3]
puts (ys.map {|x| x + 1}).to_s
ys.map! {|x| x + 1}
puts ys.to_s

