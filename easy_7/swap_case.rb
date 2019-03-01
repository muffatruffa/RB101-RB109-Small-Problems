# returns a new string in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version

def swapcase_bk(str)
  str.gsub(/([a-z]|[A-Z])/) { |letter| letter =~ /[a-z]/ ? letter.upcase : letter.downcase}

end

def swapcase(str)
  str.each_char.inject('') do |memo, char|
    case char
    when /[a-z]/ then memo << char.upcase
    when /[A-Z]/ then memo << char.downcase
    else memo << char
    end
  end
end

def swapcase_rec(str)
  f = ->(a_str, acc) {
    if a_str.empty?
      acc
    else
      current = a_str[0]
      if /[a-z]/ =~ current
        acc << current.upcase
      elsif /[A-Z]/ =~ current
        acc << current.downcase
      else
        acc << current
      end
      f.(a_str[1..-1], acc)
    end
  }
  f.(str, '')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'


p swapcase_rec('CamelCase') == 'cAMELcASE'

p swapcase_rec('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

