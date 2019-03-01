#  takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument

def sequence(n)
  e = n > 0 ? 1.upto(n) : 1.downto(n)
  e.map { |i| i}
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-2) == [1, 0, -1, -2]
