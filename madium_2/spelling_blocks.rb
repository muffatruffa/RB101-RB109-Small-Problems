# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words
# that do not use both letters from any given block. Each block can only be used once.
#
# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

BLOCKS = [
  %w(b o),
  %w(x k),
  %w(d q),
  %w(c p),
  %w(n a),
  %w(g t),
  %w(r e),
  %w(f s),
  %w(j w),
  %w(h u),
  %w(v i),
  %w(l y),
  %w(z m)
]

# each letter in block is a key entry in the hash the value is the index of block
# in BLOCKS
LETTERS_BLOCK_INDEX = BLOCKS.each_with_index.inject({}) do |hash, (block, index)|
  hash[block[0]] = index
  hash[block[1]] = index
  hash
end

def block_word?(word)
  not_used_block = Array.new(BLOCKS.size, true)
  is_word_possible = true
  word.downcase.each_char do |letter|
    letter_index = LETTERS_BLOCK_INDEX[letter]
    is_letter_key = LETTERS_BLOCK_INDEX.has_key?(letter)
    is_word_possible = is_letter_key && not_used_block[letter_index]
    break unless is_word_possible
    not_used_block[letter_index] = false
  end
  is_word_possible
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# p BLOCKS
# p LETTERS_BLOCK_INDEX
