# directories
puts "\n***********************************\ndirectories"

puts File.dirname(__FILE__)
puts File.expand_path(File.dirname(__FILE__))

puts Dir.pwd

Dir.chdir("..")
puts Dir.pwd

Dir.chdir(File.join('08_io'))
puts Dir.pwd

puts Dir.entries(".").to_s

Dir.entries(".").each do |entry|
  print entry + ": "
  if File.file?(entry) && File.readable?(entry)
    File.open(entry, "r") do |file|
      puts file.gets
    end
  else
    puts
  end
end

Dir.foreach(".") {|entry| puts entry}

Dir.mkdir("temp_dir")
Dir.delete("temp_dir")
