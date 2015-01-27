require 'restaurant'

class Guide

  class Config
    @@actions = ['list','find','add','quit']
    def self.actions; @@actions; end
  end

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
      action = get_action
      result = do_action(action)
    end

    conclusion
  end

  def get_action
    action = nil
    until Guide::Config.actions.include?(action)
      puts "Actions: #{Guide::Config.actions.join(', ')}" if action
      print "> "
      response = gets.chomp
      action = response.downcase.strip
    end
    return action
  end

  def do_action(action)
    case action
    when 'list'
      list
    when 'find'
      puts "Finding.."
    when 'add'
      add
    when 'quit'
      return :quit
    else
      puts "\nHuh?\n"
    end
  end

  def add
    puts "\nAdd a restaurant\n\n"

    restaurant = Restaurant.build_from_questions
    if restaurant.save
      puts "\nRestaurant added\n\n"
    else
      puts "\nSave error: Restaurant not added\n\n"
    end
  end

  def list
    puts "\nList all restaurants\n\n"

    Restaurant.saved_restaurants.each do |restaurant|
      print restaurant.name + " | "
      print restaurant.cuisine + " | "
      puts restaurant.price
    end
  end

  def introduction
    puts "Welcome to Food Finder\n\n"
  end

  def conclusion
    puts "Byebye!\n\n"
  end

end
