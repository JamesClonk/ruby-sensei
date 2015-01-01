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

