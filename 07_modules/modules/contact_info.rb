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
