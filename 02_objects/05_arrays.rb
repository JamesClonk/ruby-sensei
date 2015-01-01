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

