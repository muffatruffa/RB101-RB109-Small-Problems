# returns the sum of the sums of each leading subsequence for that Array.

def sum_of_sums(ar)
  sum_of_sum = 0
  0.upto(ar.size() - 1) { |i| 0.upto(i) { |current| sum_of_sum += ar[current]} }
  sum_of_sum
end

def sum_of_sums(ar)
  # We could easly use Array#sum
  # But where would the funny be?
  sum = ->(ar) {
    if ar.empty?
      0
    else
      ar[-1] + sum.(ar[0..-2])
    end
  }
  if ar.empty?
    0
  else
    sum.(ar) + sum_of_sums(ar[0..-2])
  end
end


def sum_of_sums_lauch(ary)
  sum = 0
  ary.each_with_index{ |n, i| sum += (n*(ary.size - i)) }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5])
