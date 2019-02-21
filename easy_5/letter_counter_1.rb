#  takes a string with one or more space separated words and returns a hash
#  that shows the number of words of different sizes

def word_sizes(words)
  size_num_word = Hash.new(0)
  words.scan(/[^\s]+/) {|w| size_num_word[w.size] += 1 }
  size_num_word
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
