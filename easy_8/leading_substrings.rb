# returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring

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
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


p substrings_at_start('abc')
p substrings_at_start('a')
p substrings_at_start('xyzzy')
