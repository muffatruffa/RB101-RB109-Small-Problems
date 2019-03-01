# returns a list of all substrings of a string that are palindromic

 # returns a list of all substrings of a string. 
def substrings_at_start(str)
  str.each_char.map.with_index do |char, index|
    str[0..index]
  end
end

def substrings(str)
  0.upto(str.size() - 1).reduce([]) { |arr, index|  arr +=  substrings_at_start(str[index..-1])}
end

def palindrome?(sentence)
  return false if sentence.size  == 1 || sentence.empty?
  second_ind = sentence.size() - 1
  first_ind = 0
  ispalindrome = true
  while first_ind < second_ind && ispalindrome
    ispalindrome = sentence[first_ind].downcase ==
      sentence[second_ind].downcase && sentence[first_ind].match(/[a-zA-Z0-9]/)
    first_ind +=1
    second_ind -=1
  end
  ispalindrome
end



def palindromes(str)
  substrings(str).select { |sub| palindrome?(sub)}
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

palindromes('hello-madam-did-madam-goodbye') # => ["ll", "madam", "ada", "did", "madam", "ada", "oo"]

# >> true
# >> true
# >> false
# >> true
