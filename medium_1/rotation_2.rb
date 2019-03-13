# Write a method that can rotate the last n digits of a number.

#  rotates an array by moving the first element to the end of the array. The original array should not be modified

def rotate_array(ar)
  ar[1..-1] << ar[0]
end

def rotate_rightmost_digits(n, last_digits)
  ar_digits = n.to_s.chars
  (ar_digits[0,ar_digits.size() - last_digits] + rotate_array(ar_digits[-last_digits..-1])).join().to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

