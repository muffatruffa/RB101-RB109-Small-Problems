# takes a year as input and returns the century

def century(year)
  century = year % 100 == 0 ? year/100 : year/100 + 1
  ending = case century.to_s
  when /^\d*1[123]$/ then 'th'
  when /^\d*1$/ then 'st'
  when /^\d*2$/ then 'nd'
  when /^\d*3$/ then 'rd'
  else 'th'
  end
  century.to_s + ending
end

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'
