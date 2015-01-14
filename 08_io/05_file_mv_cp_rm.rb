# file rename
puts "\n***********************************\nfile rename"

file = File.new("test.txt", "w")
file.puts "Hello World!"
file.close

File.rename("test.txt", "test_2.txt")

# file copy
puts "\n***********************************\nfile copy"

require 'fileutils' # FileUtils proves cp, mv and rm (and more)
FileUtils.copy("test_2.txt", "test_3.txt")

# file delete
puts "\n***********************************\nfile delete"

File.delete("test_2.txt")
File.delete("test_3.txt")
