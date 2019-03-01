#  calculates and returns the index of the first Fibonacci number
#  that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

def find_fibonacci_index_by_length_bk(digits_num)
  fib_position = 1
  first_fib = 1
  second_fib = 1
  decimal_position = decimal_base(digits_num)
  loop do
    break if first_fib >= decimal_position
    first_fib, second_fib = second_fib, first_fib + second_fib
    fib_position += 1
  end
  fib_position
end

#def decimal_base(n)
#  ten_to_position = 1
#  loop do
#    n -= 1
#    break if n == 0
#    ten_to_position *= 10
#  end
#  ten_to_position
#end


def decimal_base(n)
  10**(n-1)
end

def find_fibonacci_index_by_length_rec(base_power, current_p, previous_f, next_f)
  if previous_f >= base_power
    current_p
  else
    find_fibonacci_index_by_length_rec(base_power, current_p + 1, next_f, previous_f + next_f)
  end
end

def find_fibonacci_index_by_length_back_up(digits_num)
  current_p = 1
  base_power = decimal_base(digits_num)
  previous_f = 1
#  f = -> (current_p, previous_f, next_f) {
#  if previous_f >= base_power
#    current_p
#  else
#    f.(current_p + 1, next_f, previous_f + next_f)
#  end
#  }
#  f.(1, 1, 1)
  f = -> (next_f) {
    if previous_f >= base_power
      current_p
    else
      current_p += 1
      previous_f, next_f = next_f, previous_f + next_f
      f.(next_f)
    end
  }
  f.(1)

end


#def find_fibonacci_index_by_length_bk(digits_num)
#  base_power = decimal_base(digits_num)
#  find_fibonacci_index_by_length_rec(base_power, 1, 1, 1)
#end

#p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
#p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
#p find_fibonacci_index_by_length(10) == 45
#p find_fibonacci_index_by_length(100) == 476
#p find_fibonacci_index_by_length(1000) == 4782
#p find_fibonacci_index_by_length(10000) == 47847
#
#
#p find_fibonacci_index_by_length(2)
#p find_fibonacci_index_by_length(3)
#p find_fibonacci_index_by_length(10)
#p find_fibonacci_index_by_length(100)
#p find_fibonacci_index_by_length(1000)
#p find_fibonacci_index_by_length(10000)
#
#p decimal_base(1)
#p decimal_base(2)
#

FIBONACCI = Enumerator.new do |y|
  a = b = 1

  loop do
    y << a
    a, b = b, a + b
  end
end

#p FIBONACCI.take(10)

# Using the Enumerator#lazy

#p fibonacci.lazy.select(&:even?).first(10)
#puts
#p fibonacci.lazy.with_index.select { |n, i| n.odd? }.first(10)
#puts
#
#p fibonacci.lazy.with_index.select { |n, i| n.even? }.first(10)
#puts
#p fibonacci.lazy.with_index.find { |n, i| n == 2584 }


def find_fibonacci_index_by_length(digits_num)
  decimal_position = decimal_base(digits_num)

  FIBONACCI.lazy.with_index(1).find { |fib, index| fib >= decimal_position }[1]
end


p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)

p decimal_base(1)
p decimal_base(2)
