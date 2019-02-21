# method that takes two strings as arguments, determines the longest of the two strings,
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.

def short_long_short(one, two)
  shorter, longest = [one, two].sort_by {|word| word.length}  # => ["abc", "defgh"], ["fgh", "abcde"], ["", "xyz"]
  "#{shorter}#{longest}#{shorter}"                            # => "abcdefghabc",    "fghabcdefgh",    "xyz"
end                                                           # => :short_long_short


short_long_short('abc', 'defgh') == "abcdefghabc"  # => true
short_long_short('abcde', 'fgh') == "fghabcdefgh"  # => true
short_long_short('', 'xyz') == "xyz"               # => true

