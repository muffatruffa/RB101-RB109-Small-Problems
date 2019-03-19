# akes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.
# Your solution should not mutate the input arrays.


def merge(ar_1, ar_2)
  result = []
  until ar_1.empty? || ar_2.empty?
    if ar_1[0] < ar_2[0]
      result << ar_1[0]
      ar_1 = ar_1[1..-1]
    else
      result << ar_2[0]
      ar_2 = ar_2[1..-1]
    end
  end
  result + ar_1 + ar_2
end

def merge_rec(ar_1, ar_2)
  if ar_1.empty?
    ar_2
  elsif ar_2.empty?
    ar_1
  else
    if ar_1[0] < ar_2[0]
      [ar_1[0]] + merge_rec(ar_1[1..-1], ar_2)
    else
      [ar_2[0]] + merge_rec(ar_1, ar_2[1..-1])
    end
  end
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]




p merge_rec([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge_rec([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge_rec([], [1, 4, 5]) == [1, 4, 5]
p merge_rec([1, 4, 5], []) == [1, 4, 5]
