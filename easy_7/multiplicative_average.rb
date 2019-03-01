# takes an Array of integers as input, multiplies all the numbers together,
# divides the result by the number of entries in the Array, and then prints
# the result rounded to 3 decimal places.

def show_multiplicative_average_bk(ar)
  average = ar.inject(1) { |av, num| num * av}
  print format("%.3f\n" , average.to_f / ar.size)
end

def show_multiplicative_average(ar)
  # expect ar not empty
  f = ->(ar, acc, size) {
    if ar.empty?
      acc.to_f / size
    else
      f.(ar[1..-1], acc * ar[0], size + 1)
    end
  }
  # avoid zero division error if ar empty
  return nil if ar.empty?
  print format("%.3f\n", f.(ar, 1, 0))
end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
