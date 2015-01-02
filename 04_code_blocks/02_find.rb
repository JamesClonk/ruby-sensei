# find/detect
puts "\n***********************************\nfind/detect"
y = (1..10).find { |x| x % 2 == 0 }
puts y
puts (1..10).detect { |x| x % 3 == 0 }
puts (1..10).find { |x| x > 15 }


# find_all/select (filter)
puts "\n***********************************\nfind_all/select"
ys = (1..10).find_all { |x| x % 2 == 0 }
puts ys.inspect
puts ((1..10).select { |x| x % 3 == 0 }).inspect
puts ((1..10).find_all { |x| x > 15 }).inspect


# any?
puts "\n***********************************\nany?"
puts (1..10).any? { |x| x % 5 == 0 }
puts (1..10).any? { |x| x > 15 }


# all?
puts "\n***********************************\nall?"
puts (1..10).all? { |x| x > 0 }
puts (1..10).all? { |x| x % 5 == 0 }
puts (1..10).all? { |x| x > 15 }


# delete_if
puts "\n***********************************\ndelete_if"
puts ([*1..10].delete_if { |x| x % 2 == 0 }).inspect

