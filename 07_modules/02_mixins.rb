# mixins
puts "\n***********************************\nmixins"

module ContactInfo
  attr_accessor :first_name, :last_name, :city, :zip_code

  def full_name
    return @first_name + ' ' + @last_name
  end

  def address
    result = @city
    result = "#{@zip_code} #{result}" if @zip_code
    return result
  end
end

class Person
  include ContactInfo
end

class Teacher < Person
  attr_accessor :lesson_plans
end

class Student
  include ContactInfo
  attr_accessor :books, :grades
end

teacher = Teacher.new
teacher.first_name = 'John'
teacher.last_name = 'Doe'
puts teacher.full_name

student = Student.new
student.first_name = 'Little'
student.last_name = 'Jimmy'
puts student.full_name
