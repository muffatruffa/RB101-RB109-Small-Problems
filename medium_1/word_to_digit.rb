#  returns the same string with any sequence of the words 'zero', 'one',
#  'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

WORD_DIGIT = %w(one two three four five six seven eight nine)

def word_to_digit_bk(str)
  word_digit = {
    'one' => 1,
    'two' => 2,
    'three' => 3,
    'four' => 4,
    'five' => 5,
    'six' => 6,
    'seven' => 7,
    'eight' => 8,
    'nine' => 9
  }
  word_numbers = Regexp.new(word_digit.keys.join('|'))
  str.gsub!(/#{word_numbers}/, word_digit)
end

def word_to_digit(str)
  with_digits = str.gsub(/(\w+)(\s+|([.,;:?!])|$)/) do |word|
    if (WORD_DIGIT.include? $1)
      !!$3 ? (WORD_DIGIT.index($1) + 1).to_s + $3 :  (WORD_DIGIT.index($1) + 1).to_s
    else
      word
    end
  end
  # format phone numbers
   with_digits.gsub(/(\d{3})(\d{3})(\d{4})/, '(\1) \2-\3')
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('Please call me at five five five one two three four. Thanks. five five five one two three four one nine seven')


p word_to_digit('Please call me at five  five    five one two three four. Thanks 1 2.') == 'Please call me at 5551234. Thanks 1 2.'
