# returns the ASCII string value of a string that is passed in as an argument

def ascii_value(str)
  str.chars.map { |ch| ch.ord}.sum
end

def ascii_value_rec(str, acc)
  if str.empty?
    acc
  else
    ascii_value_rec(str[1..-1], acc + str[0].ord)
  end
end

def ascii_value(str)
  ascii_value_rec(str,0)
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

