puts ">> Please enter an integer greater than 0:"

number = gets.chomp.to_i
str_number = number 

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

operator = gets.chomp
str_operator = ''
case operator
when 's'
  str_operator = 'sum'
  result = (1..number).inject(:+)
puts "The #{str_operator} of the integers between 1 and #{str_number} is #{result}."
when 'p'
  str_operator = 'product'
  result = (1..number).inject(:*)
puts "The #{str_operator} of the integers between 1 and #{str_number} is #{result}."
else
  puts "Oops. Unknown operation."
end

puts ">> Please enter an integer greater than 0:"

number = gets.chomp.to_i
str_number = number 

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

operator = gets.chomp
str_operator = ''
result = 1
case operator
when 's'
  str_operator = 'sum'
  result = 0
  loop do
    break if number == 0
    result += number
    number -=1
  end
puts "The #{str_operator} of the integers between 1 and #{str_number} is #{result}."
when 'p'
  str_operator = 'product'
  loop do
    break if number == 0
    result *= number
    number -= 1
  end
puts "The #{str_operator} of the integers between 1 and #{str_number} is #{result}."
else
  puts "Oops. Unknown operation."
end
