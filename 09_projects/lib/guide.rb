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
      action, args = get_action
      result = do_action(action, args)
    end

    conclusion
  end

  def get_action
    action = nil
    until Guide::Config.actions.include?(action)
      puts "Actions: #{Guide::Config.actions.join(', ')}" if action
      print "> "
      response = gets.chomp
      args = response.downcase.strip.split(' ')
      action = args.shift
    end
    return [action, args]
  end

  def do_action(action, args=[])
    case action
    when 'list'
      list(args)
    when 'find'
      keyword = args.shift
      find(keyword)
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

  def list(args=[])
    puts "\nList all restaurants\n\n"

    sort_order = args.shift
    sort_order = args.shift if sort_order == 'by'
    sort_order = "name" unless ['name','cuisine','price'].include?(sort_order)

    restaurants = Restaurant.saved_restaurants
    restaurants.sort! do |r1,r2|
      case sort_order
      when 'name'
        r1.name.downcase <=> r2.name.downcase
      when 'cuisine'
        r1.cuisine.downcase <=> r2.cuisine.downcase
      when 'price'
        r1.price.to_i <=> r2.price.to_i
      end
    end

    list_restaurants(restaurants)
  end

  def find(keyword="")
    puts "\nFind a restaurant\n\n"

    if keyword
      restaurants = Restaurant.saved_restaurants
      found = restaurants.select do |restaurant|
        restaurant.name.downcase.include?(keyword.downcase) ||
          restaurant.cuisine.downcase.include?(keyword.downcase) ||
          restaurant.price.to_i <= keyword.to_i
      end
      list_restaurants(found)
    else
      puts "Use a key phrase to search through the restaurant list.\n\n"
    end
  end

  def list_restaurants(restaurants=[])
    restaurants.each do |restaurant|
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
