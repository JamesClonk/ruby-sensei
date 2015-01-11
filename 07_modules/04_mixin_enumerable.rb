# enumerable as a mixin
puts "\n***********************************\nmixin enumerable"

class TodoList
  include Enumerable

  attr_accessor :items

  def initialize
    @items = []
  end

  def each
    @items.each { |item| yield item }
  end
end

list = TodoList.new
list.items = ['laundry', 'dishes', 'cleaning']
puts list.items.select { |i| i.length > 7 }
puts list.select { |i| i.length > 7 }
