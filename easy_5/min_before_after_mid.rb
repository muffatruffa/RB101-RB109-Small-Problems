# take a time of day in 24 hour format, and return the number of minutes before and after midnight,
require 'date'

SEC_IN_MIN = 60
MIN_IN_A_DAY = 60 *24
MIN_IN_A_HOUR = 60
DAY = Date.today
TIME_OBJ = Time.new(DAY.year, DAY.month, DAY.mday, 0, 0, 0 )

def after_midnight(time_24_hour)
   hours, min = time_24_hour.scan(/\d\d/)
   (hours.to_i * MIN_IN_A_HOUR + min.to_i) % MIN_IN_A_DAY
end

def before_midnight(time)
  (-1 * after_midnight(time)) % MIN_IN_A_DAY
end

def after_mid(time)
  hours, min = time.scan(/\d\d/)
  t_at_time = Time.new(DAY.year, DAY.month, DAY.mday, hours.to_i % 24, min.to_i,0)
  (t_at_time - TIME_OBJ).to_i / 60
end

def before_mid(time)
  hours, min = time.scan(/\d\d/)
  day_after = TIME_OBJ +  MIN_IN_A_DAY * SEC_IN_MIN
  t_at_time = Time.new(DAY.year, DAY.month, DAY.mday, hours.to_i % 24, min.to_i,0)
  (day_after - t_at_time).to_i / 60 % MIN_IN_A_DAY
end

after_mid('00:00')
after_mid('12:34')

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

p after_mid('00:00') == 0
p after_mid('12:34') == 754
p after_mid('24:00') == 0

puts 'before_mid'
p before_mid('00:00') == 0
p before_mid('12:34') == 686
p before_mid('24:00') == 0
