def stringy(num, start_at = 1)
  result = ''
 start_at.upto(num -1 + start_at) do |n|
    stringy_num = n.odd? ? '1' : '0'
    result << stringy_num
  end
  result
end
puts stringy(6, 1) == '101010'
puts stringy(9) == '101010101'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
