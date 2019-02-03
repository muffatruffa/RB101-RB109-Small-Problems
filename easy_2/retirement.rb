require 'date'
# displays when the user will retire and how many years she has to work till retirement
puts 'What is your age?'

age = gets.chomp.to_i

puts 'At what age would you like to retire?'

retirement_age = gets.chomp.to_i

today = Date.today
current_year = today.year

year_stay = retirement_age - age

if year_stay < 0
  puts "Enjoy your retirement meanwhile we'll implement input checking!'"
elsif
  year_stay < 10
  puts "You're retirement year is #{current_year + year_stay}. Nearly there congratulation'"
else
  puts "It's #{current_year}. You will retire in #{current_year + year_stay}. You have only #{year_stay} years of work to go!'"
end
