# sort
puts "\n***********************************\nsort"
puts 1 <=> 2
puts 2 <=> 1
puts 2 <=> 2

xs = [1, 5, 3, 7, 2, 9, 4, 6, 10, 8]
puts xs.sort.to_s
puts xs.sort { |a, b| a <=> b }.to_s
puts xs.sort { |a, b| b <=> a }.to_s
puts (xs.sort do |a, b|
       case
         when a % 2 == 0 && b % 2 == 0
           b <=> a
         when a % 2 == 0
           1
         when b % 2 == 0
           -1
         else
           a <=> b
       end
     end).to_s

puts xs.sort_by { |x| x % 3 }.to_s
puts xs.sort_by { |x| x * -1 }.to_s

puts xs.to_s
xs.sort! { |a, b| b <=> a }.to_s
puts xs.to_s

hs = {:name => 'Ruby', :version => '2.1.5'}
puts hs.sort { |a, b| b[0] <=> a[0] }.to_s
puts hs.sort_by { |p| p[1] }.to_s

