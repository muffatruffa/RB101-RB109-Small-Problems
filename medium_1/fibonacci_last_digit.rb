# compute a method that returns the last digit of the nth Fibonacci number.


def fibonacci_last_bk(n)
  prev_fib = 1
  next_fib = 1
  n_digit = 1
  base_power = 10
  while n > 2
    prev_fib, next_fib = next_fib, prev_fib + next_fib
    while next_fib / base_power > 0
      base_power *= 10
      n_digit +=1
    end
    n -= 1
  end
  [next_fib % 10, n_digit]
end


def fibonacci_last(n)
  counter = 1
  last_1 = 0
  last_2 = 1

  until counter > n
    last_2, last_1 = last_1, (last_1 + last_2) % 10
    counter += 1
  end

  last_1
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
