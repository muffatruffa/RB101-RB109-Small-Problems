# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.

def word_sizes(words)
  letters = ( ('a'..'z').to_a + ('A'..'Z').to_a ).join
  word_size_frequence = words.split.group_by do |word|
    word.count(letters)
  end
  word_size_frequence.each { |k, v| word_size_frequence[k] = v.size}
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
