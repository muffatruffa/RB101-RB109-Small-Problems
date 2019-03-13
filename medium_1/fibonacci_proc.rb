# fibonacci method so that it computes its results without recursion.

def fibonacci(n)
  prev_fib = 1
  next_fib = 1
  while n > 2
    prev_fib, next_fib = next_fib, prev_fib + next_fib
    n -= 1
  end
  next_fib
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
#p fibonacci(100_001) # => 4202692702.....8285979669707537501
