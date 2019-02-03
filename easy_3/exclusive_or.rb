def xor?(operand_a, operand_b)
  if operand_a
    !operand_b
  else
    operand_b
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
