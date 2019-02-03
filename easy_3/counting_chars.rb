puts "Please write word or multiple words:"

words = gets.chomp

num_no_space = words.gsub(/\s/,'').size

puts "There are #{num_no_space} characters in \"#{words}\"."
