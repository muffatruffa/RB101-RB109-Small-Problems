 # returns true if all of the alphabetic characters inside the string are uppercase

def uppercase_bk?(str)
  str.each_char.all? { |c| !!c.match(/[^a-zA-Z]/) || c.downcase != c}
end
def uppercase?(string)
    string == string.upcase
end

 p uppercase?('t') == false
 p uppercase?('T') == true
 p uppercase?('Four Score') == false
 p uppercase?('FOUR SCORE') == true
 p uppercase?('4SCORE!') == true
 p uppercase?('') == true
 p uppercase?('4444') == true
