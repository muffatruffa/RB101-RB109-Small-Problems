#  returns true if the number's absolute value is odd.  not allowed to use #odd? or #even?'
def is_odd? (num)
  num.remainder(2) != 0
end
puts is_odd?(-11)
