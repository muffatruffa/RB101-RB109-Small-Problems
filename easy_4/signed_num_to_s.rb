# takes an integer, and converts it to a string representation.


# takes a positive integer or zero, and converts it to a string representation

CHARS_DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(num)
  if num / 10 == 0
    CHARS_DIGITS[num]
  else
    integer_to_string(num/10) + CHARS_DIGITS[num % 10]
  end
end

def signed_integer_to_string(int)
  case
  when int.zero? then '0'
  when int < 0 then '-' + integer_to_string(-int)
  else '+' + integer_to_string(int)
  end
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'
