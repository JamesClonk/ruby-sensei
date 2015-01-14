# file paths
puts "\n***********************************\nfile paths"

# absolute path
puts File.join('','home', 'user', 'file.txt')

puts __FILE__ # current file
puts File.expand_path(__FILE__)

# relative path
puts File.dirname(__FILE__)
puts File.join(File.dirname(__FILE__), '..', '08_io')
