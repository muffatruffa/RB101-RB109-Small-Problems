def reverse_words(str)
  result = ""
  str.scan(/(\w+)(\s*)/).each do |words|
    words.each do |word|
      if word.size >= 5
        result << word.reverse
      else
        result << word
      end
    end
  end
  result
end
puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')

# >> lanoisseforP
# >> Walk dnuora the kcolb
# >> hcnuaL loohcS

