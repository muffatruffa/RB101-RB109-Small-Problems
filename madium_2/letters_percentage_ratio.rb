#  returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters,
#  one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

def letter_percentages(str)
  tota_l = 0
  percentages = {}
  percentages[:lowercase] = 0
  percentages[:uppercase] = 0
  percentages[:neither] = 0
  str.each_char do |letter|
    tota_l += 1
    case letter
    when /[a-z]/ then percentages[:lowercase] +=1
    when /[A-Z]/ then percentages[:uppercase] += 1
    else percentages[:neither] +=1
    end
  end
  percentages.each { |k, v| percentages[k] =  ((percentages[k].to_f/tota_l) * 100).round(2)}
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }


p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')
p letter_percentages('abcdefGHI')
