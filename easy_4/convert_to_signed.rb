#  takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or -

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str_num)
  if str_num.size == 1
    DIGITS[str_num]
  else
    10 * string_to_integer(str_num[0..-2]) + DIGITS[str_num[-1]]
  end
end

def string_to_signed_integer(str)
  case str
  when /^-(\d+)$/ then -1 * string_to_integer($1)
  when /^\+(\d+)$/ then string_to_integer($1)
  when /^(\d+)$/ then string_to_integer(str)
  else puts 'not supported number type given'
  end
end

def str_to_signed_refactor(str)
  signed = 1
  arg = str
  first_char = str[0]
  arg = str[1..-1]  if first_char == '-' || first_char == '+'
  signed = -1 if first_char == '-'
  signed * string_to_integer(arg)
end

p string_to_signed_integer('4321') 
p string_to_signed_integer('-570')
p string_to_signed_integer('+100')


p str_to_signed_refactor('4321')

p str_to_signed_refactor('-570')

p str_to_signed_refactor('+100')
