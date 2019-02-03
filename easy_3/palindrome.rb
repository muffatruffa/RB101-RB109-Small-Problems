def palindrome?(sentence)
  # sentence == ""  it is palindrome
  if sentence.size == 0
    true
  else
    sentence[0] == sentence[-1] && palindrome?(sentence[1..-2])
  end
end

def palindrome?(sentence)
  second_ind = sentence.size() - 1
  first_ind = 0
  ispalindrome = true
  while first_ind < second_ind && ispalindrome
    ispalindrome = sentence[first_ind] == sentence[second_ind]
    first_ind +=1
    second_ind -=1
  end
  ispalindrome
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true
puts palindrome?('a') == true
puts palindrome?('') == true

puts palindrome?(%w(m a d a m)) == true
puts palindrome?(%w(M a d a m)) == false
