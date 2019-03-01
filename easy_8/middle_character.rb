#  returns the middle character or characters of the argument. If the argument has an odd length,
#  you should return exactly one character. If the argument has an even length,
#  you should return exactly two characters.

def center_of_bk(str)
  size = str.size
  size.even? ? str[size / 2 - 1] +  str[size / 2] : str[size / 2]
end

def center_of(str)
  if str.size == 1 || str.size == 2
    str
  else
    center_of(str[1..-2])
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'


p center_of('I love ruby')
p center_of('Launch School')
p center_of('Launch')
p center_of('Launchschool')
p center_of('x')
