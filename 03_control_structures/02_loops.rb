# loop
puts "\n***********************************\nloop"
x = 0
loop do # infinite loop
  x += 1
  break unless x <= 10
  next if x % 2 == 0
  puts x
end


# while
puts "\n***********************************\nwhile"
x = 0
while x < 10
  x += 1
  next if x % 2 == 0
  puts x
end


# until
puts "\n***********************************\nuntil"
x = 0
until x >= 10
  x += 1
  next if x % 2 == 0
  puts x
end

