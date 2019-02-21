# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces

CHARS = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(a_str)
  a_str.gsub(/[^\w]+/,' ')
end

def cleanup_no_regex(a_str)

  current_index = 0
  cleaned_str = ''

  loop do
    current_char = a_str[current_index]
    if CHARS.include?(current_char)
      cleaned_str << current_char
    else
      cleaned_str << ' ' unless cleaned_str[-1] == ' '
    end
    current_index += 1
    break if current_index == a_str.size
  end

  cleaned_str
end

def clean_rec(str, acc)
  if str.empty?
    acc
  else
    if CHARS.include?(str[0])
      acc << str[0]
    else
      acc << ' ' unless acc[-1] == ' '
    end
    clean_rec(str[1..-1], acc)
  end
end

def clean(str)
  clean_rec(str, '')
end

p cleanup("---what's my +*& line?") == ' what s my line '

p cleanup_no_regex("---what's my +*& line?") == ' what s my line '

p clean("---what's my +*& line?") == ' what s my line '

