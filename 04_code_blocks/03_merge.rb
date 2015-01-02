# merge hashes
puts "\n***********************************\nmerge hashes"
h1 = {:name => 'Ruby', :version => '2.1.5'}
h2 = {:name => 'Ruby', :version => '2.2.0'}
h3 = {:name => 'Go', :version => '1.4'}
puts h1.merge(h2), h2.merge(h1)
h1.merge!(h2).merge!(h3)
puts h1

puts h2.merge(h1) { |_, _, n| n }
puts h2.merge(h1) { |_, o, _| o }
puts h2.merge!(h1) { |k, o, n| k == :name ? n : o }
puts h2

