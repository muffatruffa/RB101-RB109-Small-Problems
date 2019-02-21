# takes a string argument and returns a new string that contains the value of the original string
# with all consecutive duplicate characters collapsed into a single character.

def crunch_each(doubles_str)
  return '' if doubles_str.empty?
  no_doubles = doubles_str[0]
  doubles_str[1..-1].each_char { |c| no_doubles << c unless c == no_doubles[-1] }
  no_doubles
end

def crunch_regex(doubles_str)
  doubles_str.gsub(/(\w)\1+/, '\1')
end

def crunch_rec(doubles_str)
  if doubles_str.empty?
    ''
  else
    if doubles_str[0] != doubles_str[1]
      doubles_str[0] << crunch(doubles_str[1..-1])
    else
      crunch(doubles_str[1..-1])
    end
  end
end

#def crunch(str)
#    str.gsub(/(.)(?=\1)/, '')
#end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
