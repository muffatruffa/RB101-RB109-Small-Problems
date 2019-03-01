# returns the next to last word in the String

def penultimate(str)
  reg =  /(\S+) # what we need
  \s+            # spaces between words
  \S+\Z/x # last word in string
  reg.match(str)[1]
end

# default medium word if words are odd
# last of first half if words arw even
# give first_half:false if you want
# first of second half if words are even
def medium(str, first_half:true)
  return '' if str.empty?
  decrease_even = first_half ? 1 : 0
  all_words = str.scan(/\S+/)
  num_words = all_words.size
  medium_word_position = num_words % 2 == 0 ? num_words / 2 - decrease_even : num_words / 2
  all_words[medium_word_position]
end
#p penultimate('last word') == 'last'
#p penultimate('Launch School is great!') == 'is'



p medium('last word') == 'last'
p medium('last word', first_half:false) == 'word'
p medium('Launch School is great!') == 'School'
p medium('Launch School is great!', first_half:false) == 'is'
p medium('Launch School is great! another') == 'is'
p medium('last') == 'last'
p medium('') == ''


p medium('last word')
p medium('last word', first_half:false)
p medium('Launch School is great!')
p medium('Launch School is great!', first_half:false)
p medium('Launch School is great! another')
p medium('last')
p medium('')
