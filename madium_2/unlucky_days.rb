# returns the number of Friday the 13ths in the year given by an argument.
require 'date'

MONTHS = {
  0 => 'January',
  1 => 'February',
  2 => 'March',
  3 => 'April',
  4 => 'May',
  5 => 'June',
  6 => 'July',
  7 => 'August',
  8 => 'September',
  9 => 'October',
  10 => 'November',
  11 => 'December'
}

def friday_13th(year)
  current_date = nil
  fridays_num = 0
  1.upto(12) do |mounth|
    current_date = Date.new(year, mounth, 13)
    fridays_num += 1 if current_date.friday?
  end
  fridays_num
end

def friday_13th_bk(year)
  unlucky_count = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end
# count  number of Fridays
# return array Juanuary is at zero
def fridays_in_year(year)
  current_week = 1
  current_day = 5
  current_date = DateTime.commercial(year, current_week, current_day)
  fridays_per_month = Array.new(12,0)
  while current_date.year == year
    fridays_per_month[current_date.month - 1] += 1
    current_date += 7
  end
  fridays_per_month
end

def display_fridays(year)
  fridays_ar = fridays_in_year(year)
  fridays_ar.each_with_index do |fr_num, month|
   puts "#{MONTHS[month]} has five fridays" if fr_num == 5
  end
end
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

display_fridays(2019)


