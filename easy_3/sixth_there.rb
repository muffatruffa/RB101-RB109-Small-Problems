ordinals = %w(1st 2nd 3rd 4th 5th last)

numbers = []

user_choice = ''

0.upto(5) do |n|
  puts "==> Enter the #{ordinals[n]} number:"
  user_choice = gets.chomp.to_i
  numbers << user_choice unless n == 5
end

appears = {true => 'appears', false => 'does not appear'}

is_in = numbers.include?(user_choice)

puts "The number #{user_choice} #{appears[is_in]} in #{numbers}."
