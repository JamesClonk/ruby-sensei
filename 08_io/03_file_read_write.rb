# file read/write
puts "\n***********************************\nfile read/write"

file = File.new("test.txt", "w") # w mode truncates file
file.close

File.open("test.txt", "r+") do |file| # r+ mode is read/write
  file.puts "Hello World!"
  file.print "123"
  file.write "abc"
  file << "xyz"
end
# no need for *.close

File.open("test.txt", "r") do |file|
  puts file.gets
  puts file.read(3)
  puts file.read(3)
  puts file.read(3)
end

file = File.new("test.txt", "r")
while line = file.gets
  puts line.chomp.reverse
end
file.close

File.open("test.txt", "r") do |file|
  file.each_line {|line| puts line.upcase }
end
