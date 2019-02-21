# searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples

def multisum(to_num)
  (1..to_num).select { |n| n % 3 == 0 || n % 5 == 0}.inject(:+)  # => 3, 8, 33, 234168
end                                                              # => :multisum

multisum(3) == 3          # => true
multisum(5) == 8          # => true
multisum(10) == 33        # => true
multisum(1000) == 234168  # => true
