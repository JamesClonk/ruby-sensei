# file pointer
puts "\n***********************************\nfile pointer"

file = File.new("test.txt", "r+")

puts file.pos
puts file.read(3)
puts file.pos
puts file.gets
puts file.pos

file.pos = 11
puts file.read(2)
puts file.pos

puts file.read(99)
puts file.pos
puts file.eof?

file.write("XYZ")
puts file.pos

file.rewind
file.pos += 6
puts file.read(5)

file.pos += -11
puts file.pos

puts file.lineno
file.gets
puts file.lineno
# careful about file.lineno (it does not do what you think it does! read the doc!)

file.close
