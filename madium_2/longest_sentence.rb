# reads the content of a text file and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence


def longest(f_name)
  longest_sentence = ''
  longest_num_words = 0
  current_sentnce = ''

  File.open(f_name) do |file|
    file.each_line do |line|
      cur_line = line

      # line include end of sentence
      if m = /[.!?]/.match(cur_line)
        # add line words before end of sentence to the current sentence
        current_sentnce << m.pre_match + m[0]
        current_num_words = current_sentnce.split(' ').size
        # check and update for the longest sentence
        if current_num_words > longest_num_words
          longest_sentence = current_sentnce
          longest_num_words = current_num_words
        end
        # store line words after last end of sentence
        current_sub_line = m.post_match
        # check if there is more than one end of sentence in line
        while m = /[.!?]/.match(current_sub_line) do
          # eventually take care of all remaining sentences in line
          current_sub_line = m.pre_match
          current_sub_line_num_words = current_sub_line.split(' ').size
          if current_sub_line_num_words > current_num_words
            longest_num_words = current_sub_line_num_words
            longest_sentence = current_sub_line + m[0]
          end
          current_sub_line = m.post_match
        end
        # update current_sentnce and current_num_words
        # to start counting for next line
        current_sentnce = current_sub_line
        current_num_words = 0
      # no end of sentence in line
      else
        current_sentnce << cur_line
      end
    end
  end
  print longest_sentence + "\n"
  puts longest_num_words
end

 longest('./longest_s.txt')
 longest('./longest_test.txt')
