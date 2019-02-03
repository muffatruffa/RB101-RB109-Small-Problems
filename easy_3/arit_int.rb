arr = []

puts "Enter the first number:"

arr << gets.chomp.to_i

puts "Enter the second number:"

arr << gets.chomp.to_i

operators = [:+, :-, :*, :/, :%, :**]

operators.each do |operator|
  puts "#{arr[0]} #{operator} #{arr[1]} = #{arr.reduce(operator)}"
end
