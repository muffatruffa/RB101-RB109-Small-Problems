def reverse_sentence(str)
  reversed = ""
  str.scan(/(\s*)(\S+)(\s*)/).each do |matched_groups|
    matched_groups.each {|sub_str| reversed.prepend(sub_str)}
  end
  reversed
end
p reverse_sentence(" Hello World ") # => " World Hello "
p reverse_sentence("hello world") # => "world hello"
p reverse_sentence("HELLO") # => "HELLO"
p reverse_sentence("") # => ""
