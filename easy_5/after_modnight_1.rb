require 'date'
# takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm)

# min % 60 == minutes for both min > 0 and min <0
#


def time_of_day(min)
  hours_num, minutes = min.divmod(60)
  hour = hours_num % 24
  format("%02d:%02d", hour, minutes)
end

time_of_day(0)
time_of_day(-3)
time_of_day(35)
time_of_day(-1437)
time_of_day(3000)
time_of_day(800)
time_of_day(-4231)

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"


# get the first sunday of 2019 and create a Time object to work with
def time_of_day_week(delta_minutes)
  # first sunday of the year at midnight
  first_sunday = Date.commercial(2019, 1, 7)
  # get a time object
  sunday_time = first_sunday.to_time
  # times work with seconds, trasform delta_minutes to seconds
  delta_sec = delta_minutes * 60
  # get the resulting time
  before_after_time = sunday_time + delta_sec
  #return  a string rappresentation
  before_after_time.strftime('%A %H:%M')
end

time_of_day_week(0)
time_of_day_week(-3)
time_of_day_week(35)
time_of_day_week(-1437)
time_of_day_week(3000)
time_of_day_week(800)
time_of_day_week(-4231)
