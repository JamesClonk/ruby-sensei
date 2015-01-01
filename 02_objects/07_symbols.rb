# symbols
puts "\n***********************************\nsymbols"
a = :abc
b = "abc"
puts [a.object_id, b.object_id].join(", ")
x = :abc
y = "abc"
puts [x.object_id, y.object_id].join(", ")

# use symbols as keys in hashes
hash = {:Name => 'Ruby', :Version => '2.1.5'}
puts hash, hash[:Name], hash['Name'.to_sym]

