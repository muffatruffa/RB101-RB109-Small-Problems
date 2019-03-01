 #  returns a new string in which every consonant character is doubled

def double_consonants(str)
  str.gsub(/[a-z&&[^aeiou]]/i) { |m| m + m}
end


 p double_consonants('String') == "SSttrrinngg"
 p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
 p double_consonants("July 4th") == "JJullyy 4tthh"
 p double_consonants('') == ""


 p double_consonants('String')
 p double_consonants("Hello-World!")
 p double_consonants("July 4th")
 p double_consonants('')

 p double_consonants('StrIng')
