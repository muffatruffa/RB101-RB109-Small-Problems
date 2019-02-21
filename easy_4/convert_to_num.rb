# Write a method that takes a String of digits, and returns the appropriate number as an integer.


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

EXA = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
  'f' => 15
}

BASES = { 10 => DIGITS, 16 => EXA}

def string_to_integer_bk(str_num)
  match_at = -1
  positional_multi = 0
  to_num = 0
  while last_match =  /\d/.match(str_num, match_at)
    to_num +=  DIGITS[last_match[0]] * 10 ** positional_multi
    match_at -= 1
    positional_multi += 1
  end
  to_num
end

def string_to_integer(str_num)
  if str_num.size == 1
    DIGITS[str_num]
  else
    10 * string_to_integer(str_num[0..-2]) + DIGITS[str_num[-1]]
  end
end

def stri_to_in(str_num, base)
  str_num = str_num.downcase
  if str_num.size == 1
    BASES[base][str_num]
  else
    base * stri_to_in(str_num[0..-2], base) + BASES[base][str_num[-1]]
  end
end

def hexadecimal_to_integer(str_num)
  stri_to_in(str_num, 16)
end

p stri_to_in('4321',10)
p stri_to_in('570',10)

p hexadecimal_to_integer('4D9f') == 19871


# How to work the algorithm for recursion

4321 == 432 * 10 + 1 # => true
570 == 57 * 10 + 0 # => true

# >> 4321
# >> 570
# >> true
