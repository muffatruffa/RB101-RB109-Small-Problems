# returns a new string that contains the original value of the argument with the first character of every word capitalized 

def word_cap(str)
  # Do not change quoted words
  str.gsub(/\b(?<!["'])(\w)(\w*)\b/) { |_| $1.upcase + $2.downcase}
end

def word_cap_bk(str)
  quotations = %w(' ")
  str.split.map { |word| quotations.include?(word[0]) ? word : word[0].upcase + word[1..-1].downcase }.join(' ')
end

def word_cap_borrowed(str)
    str.gsub(/(\s|^)(\w)(\w*)/) {
        $1 + $2.upcase + $3.downcase
      }
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
p word_cap("this is a 'quoted' word") == "This Is A 'quoted' Word"


p word_cap("this is a 'quoted' word")
p word_cap('this is a "quoted" word')
