# returns 2 times the number provided as an argument, unless the argument is a double number;

def twice(n)
  str = n.to_s
  str_size = str.size
  average_2_index = str_size / 2
  str_size > 1 && str[0..average_2_index - 1] == str[average_2_index..-1] ?  n : 2 *  n
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
