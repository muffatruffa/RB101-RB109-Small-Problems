def sum(n)
  res = 0
  n.to_s.scan(/\d/) do |digit|
    res += digit.to_i
  end
  res
end

def sum_cheat(n)
  n.digits.sum
end

def sum_loop(n)
  res = 0
  while n.divmod(10)[0] > 0
    n, digit = n.divmod(10)
    res += digit
  end
  res + n
end

def sum_rec(n)
  if n == 0
    n
  else
    n , digit = n.divmod(10)
    digit + sum_rec(n)
  end
end
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
puts sum_cheat(23) == 5
puts sum_cheat(496) == 19
puts sum_cheat(123_456_789) == 45
puts sum_loop(23) == 5
puts sum_loop(496) == 19
puts sum_loop(123_456_789) == 45
puts sum_rec(23) == 5
puts sum_rec(496) == 19
puts sum_rec(123_456_789) == 45
