 # returns a list of all substrings of a string. 
def substrings_at_start(str)
  str.each_char.map.with_index do |char, index|
    str[0..index]
  end
end

def substrings_at_start(str)
  if str.empty?
    []
  else
     substrings_at_start(str[0..-2]) << str
  end
end

def substrings(str)
  0.upto(str.size() - 1).reduce([]) { |arr, index|  arr +=  substrings_at_start(str[index..-1])}
end

def substrings(str)
  if str.empty?
    []
  else
    substrings_at_start(str) + substrings(str[1..-1])
  end
end

p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde', 
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e'
 ]


p substrings('abcde')
