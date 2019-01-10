def calculate_bonus(money,isbonus)
  res = {true => money/2, false => 0}
  res[isbonus]
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

