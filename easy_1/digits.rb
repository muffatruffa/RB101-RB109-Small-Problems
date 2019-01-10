# returns a list of the digits in the number
def digits_list(num)
  num.digits.reverse! # Integer#digits avalaible since  Ruby 2.4
end

def dig_rg_ex(num)
  res = []
  num.to_s.scan(/\d/) do |digit|
    res << digit.to_i
  end
  res
end


def dig_rec(num)
  if num < 10
    [num]
  else
    dig_rec(num / 10) + [num % 10]
  end
end
