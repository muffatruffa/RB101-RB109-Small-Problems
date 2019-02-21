# takes this string of words and returns a string in which the first and last letters of every word are swapped

#def swap(a_string)
#  a_string.gsub(/\b(\w)(\w*)(\w)\b/, '\3\2\1' )
#end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end

f_str = 'Oh what a wonderful day it is'
s_str = 'Abcde'
t_str = 'a'


swap('Oh what a wonderful day it is') # => "hO thaw a londerfuw yad ti si"
swap('Abcde') # => "ebcdA"
swap('a') # => "a"

f_str # => "Oh what a wonderful day it is"
s_str # => "Abcde"

swap_first_last_characters(s_str) # => "ebcdA"

s_str # => "ebcdA"
