#? leap yrs occur in every yr that is evenly divisible by 4, unless the yr is also divisible by 100.
# If the yr is evenly divisible by 100, then it is not a leap yr unless the yr is evenly divisible by 400

def leap_year?(yr)
 (yr % 4 == 0 && yr % 100 != 0) || (yr % 400 == 0)
end


def leap_yr_further? (yr)
  if yr % 4 == 0
    if yr % 100 == 0
      yr % 400 == 0
    else
      true
    end
  else
    yr % 400 == 0
  end
end



leap_yr_further?(2016) == true
leap_yr_further?(2015) == false
leap_yr_further?(2100) == false
leap_yr_further?(2400) == true
leap_yr_further?(240000) == true
leap_yr_further?(240001) == false
leap_yr_further?(2000) == true
leap_yr_further?(1900) == false
leap_yr_further?(1752) == true
leap_yr_further?(1700) == false
leap_yr_further?(1) == false
leap_yr_further?(100) == false
leap_yr_further?(400) == true
