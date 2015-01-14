# file info
puts "\n***********************************\nfile info"

file = "05_file_mv_cp_rm.rb"

puts File.exists?(file)
puts File.file?(file)
puts File.directory?(file)
puts File.readable?(file)
puts File.writable?(file)
puts File.executable?(file)
puts File.size(file)
puts File.dirname(file)
puts File.expand_path(file)
puts File.basename(File.expand_path(file))
puts File.extname(file)
puts File.atime(file)	# accessed time
puts File.mtime(file)	# modified time
puts File.ctime(file)	# status changed time

file = File.new(file, "r")
stat = file.stat
puts stat.inspect
puts stat.size
puts stat.readable?
puts stat.mode
puts stat.uid
file.close
