# The first argument is a count, and the second is the first number of a sequence 
# return an Array that contains the same number of elements as the count argument, while the values of each element will be multiples of the starting number
# If the count is 0, an empty list should be returned.

def sequence(count, first)
  Array.new(count,first).map.with_index { |ar_el, ind| (ind + 1) * ar_el }
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
