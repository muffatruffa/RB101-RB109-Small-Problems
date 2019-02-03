require_relative 'multiply'

def square(n)
  multiply(n, n)
end

def power(n, to_the)
  return 1 if to_the == 0
  return n if to_the == 1
  n_power_two = to_the / 2
  ar = Array.new(n_power_two, 1)
  result = ar.map { |_| multiply(n, n) }.reduce(:*)
  result = to_the % 2 == 0 ? result : result * n
end

def power_rec(n, ex)
  if ex == 0
    1
  else
    if ex % 2 == 0
      power_rec(multiply(n,n), ex/2)
    else
      n * power_rec(multiply(n,n), ex/2)
    end
  end
end

p power_rec(3,1)

p power_rec(3,2)

p power_rec(3,3)
p power_rec(3, 4)
