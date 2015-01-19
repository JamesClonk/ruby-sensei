require 'restaurant'

class Guide

  def initialize(path=nil)
    Restaurant.filepath = path

    if Restaurant.file_usable?
      puts "Found restaurant file.\n\n"
    elsif Restaurant.create_file
      puts "Created restaurant file.\n\n"
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction

    result = nil
    until result == :quit
      print "> "
      response = gets.chomp

      result = do_action(response)
    end

    conclusion
  end

  def do_action(action)
    case action
    when 'list'
      puts "Listing.."
    when 'find'
      puts "Finding.."
    when 'add'
      puts "Adding.."
    when 'quit'
      return :quit
    else
      puts "\nHuh?\n"
    end
  end

  def introduction
    puts "Welcome to Food Finder\n\n"
  end

  def conclusion
    puts "Byebye!\n\n"
  end

end
