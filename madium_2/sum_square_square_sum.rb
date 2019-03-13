# computes the difference between the square of the sum of the first n positive integers
# and the sum of the squares of the first n positive integers.


def sum_square_difference(n)
  sum_of_ns = 0
  sum_of_squares = 0
  1.upto(n) do |i|
    sum_of_ns += i
    sum_of_squares += i * i
  end
  (sum_of_ns * sum_of_ns) - (sum_of_squares)
end


p sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
