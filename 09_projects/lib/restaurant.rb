class Restaurant

  @@filepath = nil
  def self.filepath=(path=nil)
    @@filepath = File.join(APP_ROOT, path)
  end

  attr_accessor :name, :cuisine, :price

  def self.file_exists?
    if @@filepath && File.exists?(@@filepath)
      return true
    else
      return false
    end
  end

  def self.file_usable?
    return false unless @@filepath
    return false unless File.exists?(@@filepath)
    return false unless File.readable?(@@filepath)
    return false unless File.writable?(@@filepath)
    return true
  end

  def self.create_file
    File.open(@@filepath, 'w') unless file_exists?
    return file_usable?
  end

  def self.saved_restaurants
  end

  def initialize(args={})
    @name = args[:name] || ""
    @cuisine = args[:cuisine] || ""
    @price = args[:price] || ""
  end

  def self.build_using_questions
    values = {}

    print "Restaurant name: "
    values[:name] = gets.chomp.strip

    print "Cuisine type: "
    values[:cuisine] = gets.chomp.strip

    print "Average price: "
    values[:price] = gets.chomp.strip

    return self.new(values)
  end

  def save
    return false unless Restaurant.file_usable?
    File.open(@@filepath, 'a') do |file|
      file.puts "#{[@name, @cuisine, @price].join("\t")}\n"
    end
    return true
  end
end
