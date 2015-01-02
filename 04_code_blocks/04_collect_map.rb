# collect/map
puts "\n***********************************\ncollect/map"
xs = [1, 2, 3, 4, 5].collect { |x| x * 2 }
puts xs.to_s
ys = [*1..10].map { |y| y / 2.0 }
puts ys.to_s

zs = [*1..10]
zs.map { |z| z ** 2 }
puts zs.to_s
zs.map! { |z| z ** 2 }
puts zs.to_s

qs = [*1..10].map { |x| x * -1 if x % 2 == 0 }
puts qs.to_s
rs = [*1..10].map { |x| x % 2 == 0 ? x * -1 : x }
puts rs.to_s

hs = {:name => 'Ruby', :version => '2.1.5'}
puts hs.map { |k, _| k }
puts (hs.map { |k, v| [k, v] }).to_h
