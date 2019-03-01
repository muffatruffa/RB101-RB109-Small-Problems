# returns a hash that contains 3 entries: one represents the number of characters in the string
# that are lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

def letter_case_count_bk(str)
  res = {}
  res[:lowercase] = str.count("a-z")
  res[:uppercase] = str.count("A-Z")
  res[:neither] = str.size() - (res[:lowercase] + res[:uppercase])
  res
end

def letter_case_count(str)
  res = {}
  res[:lowercase] = str.scan(/[a-z]/).size
  res[:uppercase] = str.scan(/[A-Z]/).size
  res[:neither] = str.scan(/[^a-zA-Z]/).size
  res
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
