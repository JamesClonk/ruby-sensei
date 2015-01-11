# modules
puts "\n***********************************\nmodules"

#load 'modules/contact_info.rb'
require 'modules/contact_info.rb' # require = load only once

class Person
  include ContactInfo
end

person = Person.new
person.first_name = 'John'
person.last_name = 'Doe'
puts person.full_name
