puts ">> Please enter an integer greater than 0:"

number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."

operator = gets.chomp

operators = Hash.new('')
operators['s'] = 'sum'
operators['p'] = 'product'

result = 0


operator == 's' && result = (1..number).inject(:+)
operator == 'p' && result = (1..number).inject(:*)

message = "The #{operators[operator]} of the integers between 1 and #{number} is #{result}."

operator != 's' && operator != 'p' && message = "Oops. Unknown operation."

puts message

