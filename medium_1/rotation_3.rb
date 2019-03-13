# takes an integer as argument, and returns the maximum rotation of that argument.

def rotate_array(ar)
  ar[1..-1] << ar[0]
end

def rotate_rightmost_digits(n, last_digits)
  ar_digits = n.to_s.chars
  (ar_digits[0,ar_digits.size() - last_digits] + rotate_array(ar_digits[-last_digits..-1])).join().to_i
end


def rotate_rightmost_digits_hlp(ar_digits, last_digits)
  (ar_digits[0,ar_digits.size() - last_digits] + rotate_array(ar_digits[-last_digits..-1]))
end


def max_rotation(num)
  rotate_at = num.to_s.size
  result = num.to_s.chars
  while rotate_at > 1
    result = rotate_rightmost_digits_hlp(result, rotate_at)
    rotate_at -= 1
  end
  result.join().to_i
end

def max_rotation_r(num)
  rotate_ar = ->(num_to_ar_chars, final_digits) {
    if num_to_ar_chars.empty?
      final_digits
    else
      # rotate the array
      rotated = num_to_ar_chars[1..-1] + [num_to_ar_chars[0]]
      # store in result the first elemet of array after rotation
      final_digits << rotated[0] 
      # use the rotated array in recursion skipping the already taken element
      rotate_ar.(rotated[1..-1], final_digits)
    end
  }
  rotate_ar.(num.to_s.chars, []).join.to_i
end

#p max_rotation(735291) == 321579
#p max_rotation(3) == 3
#p max_rotation(35) == 53
#p max_rotation(105) == 15 # the leading zero gets dropped
#p max_rotation(8_703_529_146) == 7_321_609_845
#
##p max_rotation(700035291)
#
puts '***'
p max_rotation(70)
p max_rotation(700)
puts '***'


p max_rotation_r(735291) == 321579
p max_rotation_r(3) == 3
p max_rotation_r(35) == 53
p max_rotation_r(105) == 15 # the leading zero gets dropped
p max_rotation_r(8_703_529_146) == 7_321_609_845

#p max_rotation(700035291)

p max_rotation_r(35)
p max_rotation_r(70)
p max_rotation_r(700)
