# loops all numbers from 1 to n included
# prints the even ones and return n
def print_even(n)
  # if 1 is the argument just evaluate to 1
  # 1 is not even do not need to print it
  if n == 1
    n
  else
    # here could be useful a function
    # that prints all even numbers 
    # from 1 to n-1 and return n-1.
    # Hold on a sec... We got it, it is print_even.
    # Let's use it.
    current = 1 + print_even(n-1)
    p current if current.even?
    # As promised we'de better return n
    current
  end
end

print_even(99)
