# if-elsif-else
puts "\n***********************************\nif-elsif-else"
if false
  puts 1
elsif true
  puts 2
else
  puts 3
end

x = if false
      333
    else
      444
    end
puts x


# unless
puts "\n***********************************\nunless"
a = 2
z = 3 unless a == 2
y = 4 unless a != 2
puts y, !y, z, !z

unless 1 > 2
  puts 'unless'
end


# case (switch)
puts "\n***********************************\ncase"
xs = [1, 2, 3, 4, 5]
case xs.include?(1)
  when true
    puts 'yup!'
  else
    puts 'nope..'
end

case
  when xs.include?(1) # only the first counts
    puts 'yup!'
  when xs.include?(3)
    puts 'yup!'
  when xs.include?(5)
    puts 'yup!'
  else
    puts 'nope..'
end

x = 'abc'
case x
  when 'a'
    puts 'a'
  when 'b'
    puts 'b'
  when 'c'
    puts 'c'
  else
    puts 'nope..'
end


# ternary
puts "\n***********************************\nternary"
puts 2 > 1 ? 'yup!' : 'nope..'
x = 2 < 1 ? 'yup!' : 'nope..'
puts x


# or/or-equals
puts "\n***********************************\nor/or-equals"
y = nil
z = 111
x = y || z
puts x

x ||= 555
puts x

y ||= 777
puts y

